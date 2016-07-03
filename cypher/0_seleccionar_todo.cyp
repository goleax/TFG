// 0 Seleccionar todo
MATCH (n)
OPTIONAL MATCH (n)-[r]->()
RETURN n,r
