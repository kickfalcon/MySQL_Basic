SELECT DISTINCT barrio FROM tabla_de_vendedores;
SELECT * FROM tabla_de_clientes WHERE barrio IN ('Condesa','Del Valle', 'Contadero', 'Oblatos');
SELECT * FROM tabla_de_clientes WHERE barrio IN (SELECT DISTINCT barrio FROM tabla_de_vendedores);
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS Precio_Max FROM tabla_de_productos GROUP BY ENVASE;
SELECT X.ENVASE, x.precio_Max FROM (SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS Precio_Max FROM tabla_de_productos GROUP BY ENVASE) X
WHERE X.Precio_Max >=10;

SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;

SELECT X.DNI, X.CONTADOR FROM 
(SELECT DNI, COUNT(*) AS CONTADOR FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI) X WHERE X.CONTADOR > 2000;