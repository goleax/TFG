// 16 Relacionar Medicos que realiza Prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/medico_prestacion.csv' AS line
MATCH (medico:Medico {id: TOINT(line.realiza) })
MATCH (prestacion:Prestacion { id: TOINT(line.prestacion) })
CREATE (medico)-[:REALIZA { inicio: TOINT(line.inicio) }]->(prestacion)
RETURN medico, prestacion
