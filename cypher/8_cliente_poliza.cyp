// 8 Relacionar Clientes y Polizas
LOAD CSV WITH HEADERS FROM 'file:///files/cliente_poliza.csv' AS line
MATCH (poliza:Poliza {id: TOINT(line.poliza) })
MATCH (cliente:Cliente {id: TOINT(line.cliente) })
CREATE (cliente)-[:CONTRATA { 
	inicio: TOINT(line.inicio), 
	fin: TOINT(line.fin), 
	prima: TOINT(line.prima) }]->(poliza)
RETURN cliente, poliza
