// 21 Relacionar Liquidacion y sus Prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/liquidacion_prestacion.csv' AS line
MATCH (liquidacion:Liquidacion {id: TOINT(line.liquidacion) })
MATCH (prestacion:Prestacion { id: TOINT(line.prestacion) })
CREATE (liquidacion)-[:ASOCIADA_A]->(prestacion)
RETURN liquidacion, prestacion
