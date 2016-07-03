// 13 Relacionar Cliente y sus Actos
LOAD CSV WITH HEADERS FROM 'file:///files/cliente_acto.csv' AS line
MATCH (cliente:Cliente { id: TOINT(line.cliente) })
MATCH (acto:Acto { acto: TOINT(line.acto), especialidad: TOINT(line.especialidad) })
CREATE (cliente)-[:TIENE_PREEXISTENCIA { inicio: TOINT(line.inicio) }]->(acto)
RETURN cliente, acto
