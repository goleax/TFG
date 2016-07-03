// 4 Importar Recibos
LOAD CSV WITH HEADERS FROM 'file:///files/recibos.csv' AS line
CREATE (recibo:Recibo {id: TOINT(line.id) })
SET recibo.importe = TOFLOAT(line.importe)
RETURN recibo