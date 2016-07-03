// 17 Relacionar Medicos que prescriben Prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/medico_prestacion.csv' AS line
MATCH (medico:Medico {id: TOINT(line.prescribe) })
MATCH (prestacion:Prestacion { id: TOINT(line.prestacion) })
CREATE (medico)-[:PRESCRIBE { inicio: TOINT(line.inicio) }]->(prestacion)
RETURN medico, prestacion
