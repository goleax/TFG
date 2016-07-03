// 12 Importar actos
LOAD CSV WITH HEADERS FROM 'file:///files/actos.csv' AS line
CREATE (acto:Acto)
SET acto.acto = TOINT(line.acto) 
SET acto.especialidad = TOINT(line.especialidad)
SET acto.nombre = line.nombre
RETURN acto