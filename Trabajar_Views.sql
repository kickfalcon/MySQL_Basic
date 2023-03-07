SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS Precio_Max FROM tabla_de_productos GROUP BY ENVASE;
SELECT X.envase, X.Precio_Max FROM  vw_envases_grandes X WHERE Precio_Max >= 10;
#Usa View para generar indicadores
SELECT A.nombre_del_producto, A.envase, A.precio_de_lista, B.precio_Max
FROM tabla_de_productos A INNER JOIN vw_envases_grandes B ON A.envase = B.envase;
# Indicadores
SELECT A.nombre_del_producto, A.envase, A.precio_de_lista, ((A.precio_de_lista/B.precio_Max)-1)*100 AS Porcentaje_variacion
FROM tabla_de_productos A INNER JOIN vw_envases_grandes B ON A.envase = B.envase;