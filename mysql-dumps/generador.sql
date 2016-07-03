DELIMITER $$
DROP PROCEDURE IF EXISTS datosPrueba$$
CREATE PROCEDURE datosPrueba()
BEGIN 
	TRUNCATE `polizas`;
	TRUNCATE `clientes`;
	TRUNCATE `polcliente`;
	TRUNCATE `proveedores`;
	TRUNCATE `liquida`;
	TRUNCATE `recibos`;
	TRUNCATE `talon`;

	SET @I=1;

	WHILE @I <= 365 DO
    
		SET @CERTIFICADO=10;
		SET @LUGAR=0.5 + RAND() * 4;
		SET @PERIODO:=( SELECT NOW() - INTERVAL FLOOR(1 + (RAND() * 1000)) DAY - INTERVAL FLOOR(1 + (RAND() * 24)) HOUR - INTERVAL FLOOR(1 + (RAND() * 60)) MINUTE );

		-- INSERT POLIZA
		SET @PRODUCTO:=( SELECT idproducto FROM `productosalud` 
		WHERE 
			idproducto >= ( SELECT FLOOR( MAX(idproducto) * RAND()) FROM `productosalud` ) 
		ORDER BY idproducto
		LIMIT 1 );
		SET @PRIMA:=ROUND(20 + (RAND() * 100), 2);

		INSERT INTO `polizas` (`certificado`, `fechaAlta`, `codTipoProd`, `prima`, `periodo`, `tipopag`) 
		VALUES (
			@CERTIFICADO, 
			@PERIODO, 
			@PRODUCTO, 
			@PRIMA, 
			YEAR(@PERIODO), 
			'M');
		    
		SET @POLIZA:=( SELECT LAST_INSERT_ID() );

		-- CLIENTE
		INSERT INTO `clientes` (`nif`, `nombre`, `apellidos`, `domicilio`, `codpostal`, `provincia`, `poblacion`, `fechanac`) 
		VALUES (
			CONCAT(FLOOR( RAND() * 100000000 ), CHAR(FLOOR(65 + (RAND() * 25)) USING UTF8)), 
			ELT(0.5 + RAND() * 8, 'PEDRO', 'JUAN', 'MANUEL', 'IGNACIO', 'SANDRA', 'NURIA', 'ANA', 'ALMUDENA'),
			ELT(0.5 + RAND() * 8, 'GARCIA', 'LOPEZ', 'RUIZ', 'DACAL', 'ROMERO', 'MARTINEZ', 'GUTIERREZ', 'JIMENEZ'),
			ELT(0.5 + RAND() * 8, 'GARCIA', 'LOPEZ', 'RUIZ', 'DACAL', 'ROMERO', 'MARTINEZ', 'GUTIERREZ', 'JIMENEZ'),
			ELT(@LUGAR, '28000', '08000', '41000', '50000'),
			ELT(@LUGAR, 'MADRID', 'BARCELONA', 'SEVILLA', 'ZARAGOZA'), 
			ELT(@LUGAR, 'MADRID', 'BARCELONA', 'SEVILLA', 'ZARAGOZA'), 
			NOW() - INTERVAL FLOOR(RAND() * (40 + 1)) + 20 YEAR - INTERVAL FLOOR(RAND() * 24) HOUR - INTERVAL FLOOR(RAND() * 60) MINUTE );

		SET @CLIENTE:=( SELECT LAST_INSERT_ID() );

		-- PREEXISTENCIA
		SET @TIENE_PREEXISTENCIA:=(SELECT FLOOR(RAND() * 10) % 2);
		
		-- TALON
		SET @ACTO := NULL;
		SET @ESPECIALIDAD := NULL;

		SELECT 
			@ACTO:=codactos,
			@ESPECIALIDAD:=codespecialidad
		FROM `actos` 
		WHERE 
			codactos >= ( SELECT FLOOR( MAX(codactos) * RAND()) FROM `actos` ) 
		ORDER BY codactos
		LIMIT 1;
        
        IF @TIENE_PREEXISTENCIA = 1 THEN INSERT 
			INTO `preexistencias`(`poliza`, `cliente`, `codacto`, `codespe`)
			VALUES (@POLIZA, @CLIENTE, @ACTO, @ESPECIALIDAD);
        END IF;

		-- POLIZA CLIENTE
		INSERT INTO `polcliente` (`poliza`, `certificado`, `codcliente`, `fechaAlta`, `tipo`) 
		VALUES (@POLIZA, @CERTIFICADO, @CLIENTE, @PERIODO, 'T');


		-- PROVEEDOR REALIZA
		INSERT INTO `proveedores` (`nif`, `nombre`, `apellidos`, `denominacion`, `fechaalta`, `domicilio`, `codpostal`, `poblacion`, `provincia`) 
		VALUES (
			CONCAT(FLOOR( RAND() * 100000000 ), CHAR(FLOOR(65 + (RAND() * 25)) USING UTF8)), 
			ELT(0.5 + RAND() * 8, 'LUCAS', 'MATEO', 'RODRIGO', 'FRANCISCO', 'MARIA', 'LAURA', 'CARLA', 'OLIVIA'),
			ELT(0.5 + RAND() * 8, 'GOMEZ', 'MANZANO', 'BERNAL', 'GARRIDO', 'HERRERA', 'BARCALA', 'CHAMORRO', 'ESTEVES'),
			CONCAT('CENTRO SALUD ', FLOOR( RAND() * 1000) ), 
			NOW() - INTERVAL FLOOR(RAND() * (40 + 1)) + 20 YEAR - INTERVAL FLOOR(RAND() * 24) HOUR - INTERVAL FLOOR(RAND() * 60) MINUTE, 
			CONCAT('CALLE ', FLOOR( RAND() * 1000) ), 
			ELT(@LUGAR, '28000', '08000', '41000', '50000'),
			ELT(@LUGAR, 'MADRID', 'BARCELONA', 'SEVILLA', 'ZARAGOZA'), 
			ELT(@LUGAR, 'MADRID', 'BARCELONA', 'SEVILLA', 'ZARAGOZA'));


		SET @PROVEEDOR_REALIZA:=( SELECT LAST_INSERT_ID() );

		-- LIQUIDA
		SET @FECHA_CONSULTA=DATE('2016-01-01') + INTERVAL @I DAY;
		-- SE TIENE QUE INCREMENTAR LA FECHA EN 1H O 1D
		--  + INTERVAL 1 DAY/SECOND
		SET @IMPORTE_PROVEEDOR:=ROUND( 20 + (RAND() * 100), 2);
		SET @IMPORTE_CLIENTE:=ROUND((RAND() * (@IMPORTE_PROVEEDOR - 1)) + 1, 2);
		SET @FECHA_LIQUIDA:=DATE(CONCAT(DATE_FORMAT(@FECHA_CONSULTA, '%Y-%m-'), '24'));

		INSERT INTO `liquida` (`codproveedor`, `fechaliq`, `importe`) 
		VALUES (
			@PROVEEDOR_REALIZA, 
			@FECHA_LIQUIDA, -- SIEMPRE MISMA FECHA DEL MES
			@IMPORTE_PROVEEDOR);


		SET @LIQUIDACION:=( SELECT LAST_INSERT_ID() );


		-- RECIBO
		INSERT INTO `recibos` (`poliza`, `certificado`, `fechaemision`, `fechageneracion`, `importe`, `prima`) 
		VALUES (
			@POLIZA, 
			@CERTIFICADO, 
			DATE(CONCAT(DATE_FORMAT(@FECHA_CONSULTA, '%Y-%m-'), '04')) + INTERVAL 1 MONTH, -- SIEMPRE MISMA FECHA DEL MES SIGUIENTE
			DATE(CONCAT(DATE_FORMAT(@FECHA_CONSULTA, '%Y-%m-'), '27')), -- SIEMPRE MISMA FECHA DEL MES 
			@IMPORTE_CLIENTE + @PRIMA, 
			@PRIMA);


		SET @RECIBO:=( SELECT LAST_INSERT_ID() );

		-- TALON
		SET @ACTO := NULL;
		SET @ESPECIALIDAD := NULL;

		SELECT 
			@ACTO:=codactos,
			@ESPECIALIDAD:=codespecialidad
		FROM `actos` 
		WHERE 
			codactos >= ( SELECT FLOOR( MAX(codactos) * RAND()) FROM `actos` ) 
		ORDER BY codactos
		LIMIT 1;

		INSERT INTO `talon` (`poliza`, `certificado`, `codcliente`, `codacto`, `codespecialidad`, `fechaconsulta`, `fechapagoprov`, `provrealiza`, `pagoprov`, `pagocliente`, `idliquidacion`, `idrecibos`) 
		VALUES (
			@POLIZA, 
			@CERTIFICADO, 
			@CLIENTE, 
			@ACTO, 
			@ESPECIALIDAD, 
			@FECHA_CONSULTA, 
			@FECHA_LIQUIDA, -- SIEMPRE MISMA FECHA DEL MES
			@PROVEEDOR_REALIZA, 
			@IMPORTE_PROVEEDOR, 
			@IMPORTE_CLIENTE, 
			@LIQUIDACION, 
			@RECIBO);


		SET @I=@I+1;
	END WHILE;

END$$
DELIMITER ;




