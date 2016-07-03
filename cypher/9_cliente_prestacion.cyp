// 9 Relacionar Cliente y sus Prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/cliente_prestacion.csv' AS line
MATCH (cliente:Cliente {id: TOINT(line.cliente) })
MATCH (prestacion:Prestacion {id: TOINT(line.prestacion) })
CREATE (cliente)-[:RECIBE { inicio: TOINT(line.inicio) }]->(prestacion)
RETURN cliente, prestacion