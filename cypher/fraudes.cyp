// FRAUDE ALTERACION DE REGISTROS EN BD

// DETECCION
// APPLICA EN CUALQUIER MOMENTO YA QUE ES POR CONSISTENCIA DEL DATO

MATCH (pe:Prestacion)--(re:Recibo)--(po:Poliza)
WITH 
	re,
	pe,
	po,
	SUM(pe.importe_proveedor) AS importe_solicitado,
	re.importe/12 AS importe_esperado
WHERE importe_solicitado > importe_esperado
RETURN re,pe,po
LIMIT 1;

// BENEFACTOR

// CREAMOS EL ESCENARIO

MATCH (me:Medico)
WHERE me.id < 0
DELETE me



CREATE (m1:Medico {id: TOINT(RAND() * -1000)})
SET m1.nombre = "benefactor"
CREATE (m2:Medico {id: TOINT(RAND() * -2000)})
SET m2.nombre = "realizador"
FOREACH (i IN RANGE(1,365) | 
	CREATE UNIQUE (m1)-[:PRESCRIBE]->(pe:Prestacion { id: i * m1.id })<-[:REALIZA]-(m2)
	SET pe.inicio = 0,
		pe.importe_cliente = TOFLOAT(10),
		pe.importe_proveedor = TOFLOAT(100)))
RETURN m1,m2


// REALIZAMOS LA BUSQUEDA
"MATCH (m1:Medico)-[:PRESCRIBE]->(pe:Prestacion)<-[:REALIZA]-(m2:Medico) " +
"WITH  " +
"	m1,  " +
"	m2, " +
"	count(pe) AS total " +
"WHERE total > 2  " +
"RETURN m1, m2, total " 



// PREEXISTENCIAS

// CREAMOS EL ESCENARIO

CREATE (cl:Cliente {id: TOINT(RAND() * -1000)})
SET cl.nombre = "preexistente"
CREATE (ac:Acto {id: TOINT(RAND() * -2000)})
	SET ac.nombre = "acto preexistente",
		ac.acto = TOINT(RAND() * -2000),
		ac.especialidad = TOINT(RAND() * -2000)
CREATE (pr:Prestacion {id: TOINT(RAND() * -3000)})
CREATE UNIQUE (cl)-[:RECIBE]->(pr)
CREATE UNIQUE (pr)-[:ASOCIADO_A]->(ac)
CREATE UNIQUE (cl)-[:TIENE_PREEXISTENCIA]->(ac)
RETURN cl, pr, ac


// REALIZAMOS LA BUSQUEDA
"MATCH (pr:Prestacion)<-[:RECIBE]-(cl:Cliente)-[:TIENE_PREEXISTENCIA]->(ac:Acto)<-[:ASOCIADO_A]-(pr) " +
"WITH cl, ac, pr, " +
"	COUNT(ac) AS total " +
"WHERE total > 10 " +
"RETURN cl, ac, pr, total; "



// ENGORDAR FACTURAS

// BASTA CON ACTUALIZAR TODAS LAS PRESTACIONES CON UN CAMPO ESTIMADO PARA EMPEZAR

// CREAMOS EL ESCENARIO
MATCH (pr:Prestacion)
SET pr.importe_estimado = TOFLOAT(100)
RETURN pr


MATCH (me:Medico)--(pr:Prestacion)
WHERE pr.importe_proveedor >= pr.importe_estimado
RETURN me, pr


"OPTIONAL MATCH (medico:Medico)-[realiza:REALIZA]->(prestacion:Prestacion) " +
"OPTIONAL MATCH (medico:Medico)-[prescribe:PREESCRIBE]->(prestacion:Prestacion) " +
"WHERE prestacion.importe_proveedor >= prestacion.importe_estimado " +
"RETURN medico, prestacion,realiza,prescribe " 