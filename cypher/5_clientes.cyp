// 5 Importar clientes
LOAD CSV WITH HEADERS FROM 'file:///files/clientes.csv' AS line
CREATE (cliente:Cliente {id: TOINT(line.id) })
SET cliente.edad = TOINT(line.edad), 
	cliente.nombre = line.nombre + ' ' + line.apellidos
RETURN cliente