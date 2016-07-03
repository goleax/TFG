// 3 Importar polizas
LOAD CSV WITH HEADERS FROM 'file:///files/polizas.csv' AS line
CREATE (poliza:Poliza {id: TOINT(line.id) })
SET poliza.prima = TOFLOAT(line.prima)
RETURN poliza