USE jugos_ventas;
SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;
# INNER JOIN:  solo muestra los datos que tienen un correspondiente
SELECT * FROM tabla_de_vendedores A INNER JOIN facturas B ON A.matricula = B.matricula;
SELECT 	A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A INNER JOIN facturas B ON A.matricula = B.matricula GROUP BY A.NOMBRE, B.MATRICULA;
# CROSS JOIN (Forma antigua de hacer INNER JOIN)
SELECT 	A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A, facturas B WHERE A.matricula = B.matricula GROUP BY A.NOMBRE, B.MATRICULA;
SELECT * FROM facturas;
SELECT * FROM items_facturas;
SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD*PRECIO) AS Facturacion FROM facturas f INNER JOIN items_facturas IFa ON f.numero = Ifa.numero GROUP BY YEAR(FECHA_VENTA);
# Left and Right Join
SELECT COUNT(*) FROM tabla_de_clientes;
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A INNER JOIN facturas B ON A.DNI = B.DNI;
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A LEFT JOIN facturas B ON A.DNI = B.DNI;
SELECT DISTINCT A.DNI, A.NOMBRE,A.CIUDAD, B.DNI FROM tabla_de_clientes A LEFT JOIN facturas B ON A.DNI = B.DNI WHERE B.DNI IS NULL;
SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI FROM facturas A RIGHT JOIN tabla_de_clientes B ON A.DNI = B.DNI WHERE A.DNI IS NULL;
# Full join
SELECT COUNT(*) FROM tabla_de_clientes;
SELECT * FROM tabla_de_vendedores;
SELECT tabla_de_clientes.nombre, tabla_de_clientes.barrio, tabla_de_vendedores.nombre
FROM tabla_de_clientes INNER JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio;
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre
FROM tabla_de_clientes LEFT JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio;
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre, tabla_de_vendedores.vacaciones
FROM tabla_de_clientes RIGHT JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio;
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre,vacaciones
FROM tabla_de_clientes RIGHT JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio;
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre,vacaciones
FROM tabla_de_clientes FULL JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio; # no funciona porque deben hacer Right y Left Join al mismo tiempo
# CROSS JOIN
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre,vacaciones
FROM tabla_de_clientes, tabla_de_vendedores WHERE tabla_de_clientes.barrio = tabla_de_vendedores.barrio;

