// 19 Importar Liquidaciones
LOAD CSV WITH HEADERS FROM 'file:///files/liquidaciones.csv' AS line
CREATE (liquidacion:Liquidacion {id: TOINT(line.id) })
SET liquidacion.importe = TOFLOAT(line.importe)
RETURN liquidacion