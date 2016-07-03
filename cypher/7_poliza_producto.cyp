// 7 Relacionar Polizas y Productos
LOAD CSV WITH HEADERS FROM 'file:///files/poliza_producto.csv' AS line
MATCH (poliza:Poliza {id: TOINT(line.poliza) })
MATCH (producto:Producto {id: TOINT(line.producto) })
CREATE (poliza)-[:ASOCIADA_A]->(producto)
RETURN poliza, producto
