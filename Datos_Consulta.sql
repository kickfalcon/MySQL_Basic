USE jugos_ventas;
#SELECT * FROM tabla_de_clientes;
#SELECT DNI AS IDENTIFICACION, NOMBRE AS CLIENTE FROM tabla_de_clientes;
SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' AND TAMANO = '470 ML';
SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' OR TAMANO = '470 ML';
SELECT * FROM tabla_de_productos WHERE NOT(SABOR = 'MANGO') OR TAMANO = '470 ML';
SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' AND NOT(TAMANO = '470 ML');
SELECT * FROM tabla_de_productos WHERE SABOR IN ('mango','uva'); # devuelve los valores donde es mango o uva, esequivalente a OR
SELECT * FROM tabla_de_clientes WHERE ciudad IN ('ciudad de México', 'guadalajara');
SELECT * FROM tabla_de_clientes WHERE ciudad IN ('ciudad de México', 'guadalajara') AND edad >21;
SELECT * FROM tabla_de_clientes WHERE ciudad IN ('ciudad de México', 'guadalajara') AND (edad BETWEEN 20 AND 25);
#LIKE para filtrar
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana';
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana' AND ENVASE = 'botella pet';
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%EZ';
#Distinct
SELECT ENVASE, TAMANO FROM tabla_de_productos;
SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;
SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos WHERE SABOR = 'naranja';
SELECT * FROM tabla_de_clientes;
SELECT DISTINCT barrio FROM tabla_de_clientes WHERE CIUDAD = 'Ciudad de México';
#Limit
SELECT * FROM tabla_de_productos;
SELECT * FROM tabla_de_productos LIMIT 5;
SELECT * FROM tabla_de_productos LIMIT 5,4;#toma desde el quinto indice 4 posiciones
SELECT * FROM facturas WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;
#Ordered by
SELECT * FROM tabla_de_productos;
SELECT * FROM tabla_de_productos ORDER BY precio_de_lista;
SELECT * FROM tabla_de_productos ORDER BY precio_de_lista DESC;
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO DESC;
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO ASC, ENVASE DESC;
SELECT * FROM TABLA_DE_PRODUCTOS WHERE NOMBRE_DEL_PRODUCTO IN ('Refrescante') AND SABOR IN ('Frutilla/Limón') AND TAMANO = '1 Litro';
SELECT * FROM items_facturas WHERE CODIGO_DEL_PRODUCTO IN ('1101035') ORDER BY CANTIDAD DESC;
#Group by
SELECT estado,limite_de_credito FROM tabla_de_clientes;
SELECT estado, SUM(limite_de_credito) AS LIMITE_TOTAL FROM tabla_de_clientes GROUP BY ESTADO;
SELECT envase, precio_de_lista FROM tabla_de_productos;
SELECT envase, MAX(precio_de_lista) AS Precio_Maximo FROM tabla_de_productos GROUP BY envase;
SELECT envase, COUNT(*) AS Precio_Maximo FROM tabla_de_productos GROUP BY envase;
SELECT barrio, SUM(limite_de_credito) AS limite FROM tabla_de_clientes GROUP BY barrio;
SELECT ciudad, barrio, SUM(limite_de_credito) AS limite FROM tabla_de_clientes WHERE CIUDAD = 'Ciudad de México' GROUP BY barrio;
SELECT ciudad, barrio, SUM(limite_de_credito) AS limite FROM tabla_de_clientes WHERE CIUDAD = 'Guadalajara' GROUP BY barrio;
SELECT ESTADO, BARRIO, MAX(limite_de_credito) AS LIMITE FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;
SELECT ESTADO, BARRIO, MAX(limite_de_credito) AS LIMITE, 
EDAD FROM tabla_de_clientes 
WHERE EDAD >= 20  GROUP BY ESTADO, BARRIO ;
select @@global.sql_mode;
set @@global.sql_mode := replace(@@global.sql_mode,'ONLY_FULL_GROUP_BY',''); 
# ONLY_GROUP_BY evita que se puedan poner comandos despues de agrupar
# Se requiere reiniciar el IDE despues de aplicar estos formatos
SELECT ESTADO, BARRIO, MAX(limite_de_credito) AS LIMITE, 
EDAD FROM tabla_de_clientes 
WHERE EDAD >= 20  GROUP BY ESTADO, BARRIO ORDER BY EDAD;
SELECT MAX(cantidad) AS 'CANTIDAD MAXIMA' FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = '1101035';
SELECT COUNT(*) FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;
# Having 
SELECT estado, SUM(limite_de_credito) AS LIMITE_TOTAL FROM tabla_de_clientes GROUP BY ESTADO;
SELECT estado, SUM(limite_de_credito) AS LIMITE_TOTAL FROM tabla_de_clientes GROUP BY ESTADO HAVING LIMITE_TOTAL > 300000;
SELECT envase, MAX(precio_de_lista) AS 'Precio Maximo', MIN(precio_de_lista) AS 'Precio Minimo' FROM tabla_de_productos 
GROUP BY ENVASE HAVING SUM(precio_de_lista) > 80;

SELECT envase, MAX(precio_de_lista) AS 'Precio Maximo', MIN(precio_de_lista) AS 'Precio Minimo', SUM(precio_de_lista) 
AS 'Suma Precios' FROM tabla_de_productos GROUP BY ENVASE HAVING SUM(precio_de_lista) >= 80 AND MAX(precio_de_lista) >= 5;

SELECT DNI, COUNT(numero) AS 'Compras realizadas', fecha_venta FROM facturas WHERE YEAR(fecha_venta) = 2016 
GROUP BY dni HAVING COUNT(*) > 2000;
# CASE
SELECT * FROM tabla_de_productos;
SELECT nombre_del_producto, precio_de_lista, 
CASE
	WHEN precio_de_lista >= 5 AND precio_de_lista < 12 THEN 'Asequible'
	WHEN precio_de_lista >= 12 THEN 'Costoso'
    ELSE 'Barato'
END AS 'Precios'
FROM tabla_de_productos;

SELECT envase, sabor, 
CASE
	WHEN precio_de_lista >= 5 AND precio_de_lista < 12 THEN 'Asequible'
	WHEN precio_de_lista >= 12 THEN 'Costoso'
    ELSE 'Barato'
END AS 'Precios', MIN(precio_de_lista) AS 'Precio minimo'
FROM tabla_de_productos WHERE TAMANO = '700 ml' GROUP BY
CASE
	WHEN precio_de_lista >= 5 AND precio_de_lista < 12 THEN 'Asequible'
	WHEN precio_de_lista >= 12 THEN 'Costoso'
    ELSE 'Barato'
END ORDER BY envase;
SELECT * FROM tabla_de_clientes;
SELECT nombre, fecha_de_nacimiento,
CASE
	WHEN YEAR(fecha_de_nacimiento) <= 1990 THEN 'Viejos'
    WHEN YEAR(fecha_de_nacimiento) > 1990 AND YEAR(fecha_de_nacimiento) <= 1995 THEN 'Jovenes'
    else 'Niños'
END AS 'Grupo de edades' FROM tabla_de_clientes ORDER BY YEAR(fecha_de_nacimiento);








