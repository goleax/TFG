// 18 Relacionar Medicos y sus actos
LOAD CSV WITH HEADERS FROM 'file:///files/medico_acto.csv' AS line
MATCH (medico:Medico {id: TOINT(line.medico) })
MATCH (acto:Acto { acto: TOINT(line.acto), especialidad: TOINT(line.especialidad) })
CREATE (medico)-[:REALIZA]->(acto)
RETURN medico, acto
