// 15 Importar medicos
LOAD CSV WITH HEADERS FROM 'file:///files/medicos.csv' AS line
CREATE (medico:Medico { id: TOINT(line.id) })
SET medico.nombre = line.nombre
RETURN medico