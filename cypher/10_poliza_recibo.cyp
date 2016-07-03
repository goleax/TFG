// 10 Relacionar Poliza y sus Recibos
LOAD CSV WITH HEADERS FROM 'file:///files/poliza_recibo.csv' AS line
MATCH (poliza:Poliza {id: TOINT(line.poliza) })
MATCH (recibo:Recibo {id: TOINT(line.recibo) })
CREATE (poliza)-[:GENERA { inicio: TOINT(line.inicio) }]->(recibo)
RETURN poliza, recibo
