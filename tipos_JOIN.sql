USE jugos_ventas;
SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;
# INNER JOIN 
SELECT * FROM tabla_de_vendedores A INNER JOIN facturas B ON A.matricula = B.matricula;
SELECT 	A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A INNER JOIN facturas B ON A.matricula = B.matricula GROUP BY A.NOMBRE, B.MATRICULA;
# CROSS JOIN (Forma antigua de hacer INNER JOIN)
SELECT 	A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A, facturas B WHERE A.matricula = B.matricula GROUP BY A.NOMBRE, B.MATRICULA;

