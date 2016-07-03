// 2 Importar productos
LOAD CSV WITH HEADERS FROM 'file:///files/productos.csv' AS line
CREATE (producto:Producto {id: TOINT(line.id) })
SET producto.nombre = line.nombre,
    producto.tarifa = TOFLOAT(line.tarifa)
RETURN producto