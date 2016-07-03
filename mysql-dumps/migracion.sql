-- PRODUCTOS MYSQL
SELECT 'id', 'nombre', 'tarifa'
UNION
SELECT productosalud.idproducto, productosalud.descripcion, tarifas.primaanual
FROM productosalud
LEFT JOIN tarifas ON tarifas.codproducto = productosalud.idproducto
INTO OUTFILE '/var/lib/mysql-files/productos.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- POLIZAS MYSQL
SELECT 'id', 'prima'
UNION 
SELECT poliza, prima
FROM polizas
INTO OUTFILE '/var/lib/mysql-files/polizas.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- CLIENTES MYSQL
SELECT 'id', 'nombre', 'edad'
UNION 
SELECT idclientes, CONCAT(nombre, ' ', apellidos), FLOOR(DATEDIFF (NOW(), fechanac)/365)
FROM clientes
INTO OUTFILE '/var/lib/mysql-files/clientes.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- RECIBOS MYSQL
SELECT 'id', 'importe'
UNION
SELECT idrecibos, importe
FROM recibos
INTO OUTFILE '/var/lib/mysql-files/recibos.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- TALON MYSQL (PRESTACION)
SELECT 'id', 'importe_cliente', 'importe_proveedor'
UNION
SELECT idtalon, pagocliente, pagoprov
FROM talon
INTO OUTFILE '/var/lib/mysql-files/prestaciones.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- POLIZAS Y SUS PRODUCTOS
SELECT 'poliza', 'producto'
UNION
SELECT poliza, idtarifas
FROM polizas 
JOIN productosalud ON productosalud.idproducto = polizas.codTipoProd
JOIN tarifas ON tarifas.codproducto = productosalud.idproducto
INTO OUTFILE '/var/lib/mysql-files/poliza_producto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- CLIENTE Y SUS POLIZAS
SELECT 'cliente', 'poliza', 'inicio', 'fin', 'prima'
UNION
SELECT idclientes, polizas.poliza, UNIX_TIMESTAMP(polcliente.fechaalta), UNIX_TIMESTAMP(polcliente.fechabaja), prima
FROM clientes
LEFT JOIN polcliente ON polcliente.codcliente = clientes.idclientes 
LEFT JOIN polizas ON polcliente.poliza = polizas.poliza
INTO OUTFILE '/var/lib/mysql-files/cliente_poliza.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- CLIENTE Y SUS PRESTACIONES MYSQL
SELECT 'cliente', 'prestacion', 'inicio'
UNION
SELECT codcliente, idtalon, fechaconsulta
FROM talon 
INTO OUTFILE '/var/lib/mysql-files/cliente_prestacion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- POLIZA Y SUS RECIBOS
SELECT 'poliza', 'recibo', 'inicio'
UNION
SELECT polizas.poliza, idrecibos, fechageneracion
FROM polizas
INNER JOIN recibos ON recibos.poliza = polizas.poliza
INTO OUTFILE '/var/lib/mysql-files/poliza_recibo.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- RECIBO Y SUS PRESTACIONES
SELECT 'recibo', 'prestacion'
UNION
SELECT idrecibos, idtalon
FROM talon
INTO OUTFILE '/var/lib/mysql-files/recibo_prestacion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- ACTOS
SELECT 'acto', 'especialidad', 'nombre'
UNION
SELECT  actos.codactos, especialidades.codespecialidad, CONCAT(actos.descripcion, ' ', especialidades.descripcion)
FROM actos
INNER JOIN especialidades ON especialidades.codespecialidad = actos.codespecialidad
INTO OUTFILE '/var/lib/mysql-files/actos.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- CLIENTES Y SUS ACTOS (PREEXSTENCIA)
SELECT 'cliente', 'acto', 'especialidad', 'inicio'
UNION
SELECT idclientes, actos.codactos, actos.codespecialidad, UNIX_TIMESTAMP(actos.fechaalta)
FROM clientes
INNER JOIN preexistencias ON preexistencias.cliente = clientes.idclientes
INNER JOIN actos ON actos.codactos = preexistencias.codacto
INTO OUTFILE '/var/lib/mysql-files/cliente_acto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- PRESTACIONES Y SUS ACTOS
SELECT 'prestacion', 'acto', 'especialidad'
UNION
SELECT idtalon, codacto, codespecialidad
FROM talon
INTO OUTFILE '/var/lib/mysql-files/prestacion_acto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- MEDICOS
SELECT 'id', 'nombre'
UNION
SELECT idproveedores, CONCAT(nombre,' ', apellidos)
FROM proveedores
INTO OUTFILE '/var/lib/mysql-files/medicos.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- MEDICOS Y SUS PRESTACIONES
SELECT 'prestacion', 'prescribe', 'realiza', 'inicio'
UNION
SELECT idtalon, provprescribe, provrealiza, UNIX_TIMESTAMP(fechaconsulta)
FROM talon
INTO OUTFILE '/var/lib/mysql-files/medico_prestacion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- MEDICO Y SUS ACTOS
SELECT 'medico', 'acto', 'especialidad'
UNION
SELECT baremo.codprov, baremo.codacto, baremo.codespecialidad
FROM baremo
INNER JOIN actos ON actos.codactos = baremo.codacto AND actos.codespecialidad = baremo.codespecialidad
INNER JOIN proveedores ON baremo.codprov = proveedores.idproveedores
INTO OUTFILE '/var/lib/mysql-files/medico_acto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

-- LIQUIDACION
SELECT 'id', 'importe'
UNION
SELECT idliquida, importe
FROM liquida
INTO OUTFILE '/var/lib/mysql-files/liquidaciones.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';



-- MEDICO Y SUS LIQUIDACIONES
SELECT 'liquidacion', 'medico', 'inicio'
UNION
SELECT idliquida, codproveedor, UNIX_TIMESTAMP(fechaliq)
FROM liquida
INTO OUTFILE '/var/lib/mysql-files/medico_liquidacion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';




-- LIQUIDACION Y SUS PRESTACIONES
SELECT 'prestacion', 'liquidacion'
UNION
SELECT talon.idtalon, idliquida
FROM talon
INNER JOIN liquida ON liquida.idliquida = talon.idliquidacion
INTO OUTFILE '/var/lib/mysql-files/liquidacion_prestacion.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';