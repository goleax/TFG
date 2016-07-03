// 6 Importar prestaciones
LOAD CSV WITH HEADERS FROM 'file:///files/prestaciones.csv' AS line
CREATE (prestacion:Prestacion { id: TOINT(line.id) })
SET prestacion.importe_cliente = TOFLOAT(line.importe_cliente),
	prestacion.importe_proveedor = TOFLOAT(line.importe_proveedor)
RETURN prestacion

