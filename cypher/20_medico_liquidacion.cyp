// 20 Relacionar Medicos y sus Liquidaciones
LOAD CSV WITH HEADERS FROM 'file:///files/medico_liquidacion.csv' AS line
MATCH (medico:Medico {id: TOINT(line.medico) })
MATCH (liquidacion:Liquidacion {id: TOINT(line.liquidacion) })
CREATE (medico)-[:PERCIBE { inicio: TOINT(line.inicio) }]->(liquidacion)
RETURN liquidacion, medico
