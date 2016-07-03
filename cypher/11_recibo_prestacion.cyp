// 11 Relacionar Recibo y sus prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/recibo_prestacion.csv' AS line
MATCH (recibo:Recibo { id: TOINT(line.recibo) })
MATCH (prestacion:Prestacion { id: TOINT(line.prestacion) })
CREATE (recibo)-[:INCLUYE]->(prestacion)
RETURN recibo, prestacion
