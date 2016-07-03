// 0 Seleccionar uno
MATCH (po:Poliza)--(pr:Producto)
MATCH (po)--(cl:Cliente)
MATCH (po)--(re:Recibo)
MATCH (re)--(pe:Prestacion)
MATCH (pe)--(me:Medico)
MATCH (pe)--(li:Liquidacion)
MATCH (li)--(pe)
MATCH (me)--(ac)
OPTIONAL MATCH (cl)--(ac:Acto)
RETURN po,pr,cl,re,pe,me,li,ac
LIMIT 1;

