1. Arranque
 
docker-compose -f mysql.compose up -d
docker-compose -f alarmas.compose up -d

2. Carga datos Mysql

mysql -uroot -proot -h127.0.0.1 -P3306 salud < mysql-dumps/alarmas.dump.v6.sql

3. Exportacion Mysql a CSV

-- POLIZAS MYSQL
SELECT 'poliza', 'certificado', 'fechaAlta', 'fechaBaja', 'codTipoProd', 'codcopago', 'prima', 'periodo', 'tipopag', 'poliza', 'certificado'
UNION 
SELECT poliza, certificado, fechaAlta, fechaBaja, codTipoProd, codcopago, prima, periodo, tipopag, poliza, certificado
FROM polizas
INTO OUTFILE '/var/lib/mysql-files/polizas.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';


-- PRODUCTO MYSQL
SELECT 'idproducto', 'descripcion', 'idproducto'
UNION 
SELECT idproducto, descripcion, idproducto
FROM productosalud
INTO OUTFILE '/var/lib/mysql-files/producto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY '' 
LINES TERMINATED BY '\r\n';

4. Accesso a Neo4j

http://localhost:7474/

5. Carga esportación

-- PRODUCTOS
LOAD CSV WITH HEADERS FROM 'file:///files/productos.csv' AS line
CREATE (producto:Producto {id: TOINT(line.idproducto) })
SET producto.nombre = line.descripcion
RETURN producto


-- POLIZAS
LOAD CSV WITH HEADERS FROM 'file:///files/polizas.csv' AS line
CREATE (poliza:Poliza {id: TOINT(line.poliza) })
SET poliza.prima = TOINT(line.prima)
RETURN poliza


-- POLIZAS Y SUS PRODUCTOS
LOAD CSV WITH HEADERS FROM 'file:///files/polizas.csv' AS line
MATCH (poliza:Poliza {id: TOINT(line.poliza) })
MATCH (producto:Producto {id: TOINT(line.codTipoProd) })
CREATE (producto)-[:ASOCIADO_A]->(poliza)
RETURN poliza, producto

6. Verificar aplicación alarmas

http://localhost:8081/

Deberia obtener un mensaje similar a:

Poliza INTEGRAL obtenida!



