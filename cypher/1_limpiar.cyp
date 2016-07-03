// 1 Limpiar
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r
