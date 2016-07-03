// 14 Relacionar Prestacion y sus Actos
LOAD CSV WITH HEADERS FROM 'file:///files/prestacion_acto.csv' AS line
MATCH (prestacion:Prestacion { id: TOINT(line.prestacion) })
MATCH (acto:Acto { acto: TOINT(line.acto), especialidad: TOINT(line.especialidad) })
CREATE (prestacion)-[:ASOCIADO_A]->(acto)
RETURN prestacion, acto
