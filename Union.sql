USE jugos_ventas;
SELECT DISTINCT barrio FROM tabla_de_clientes;
SELECT DISTINCT barrio FROM tabla_de_vendedores;
# UNION no repite datos
SELECT DISTINCT barrio FROM tabla_de_clientes 
UNION
SELECT DISTINCT barrio FROM tabla_de_vendedores;
# UNION ALL repite datos
SELECT DISTINCT barrio FROM tabla_de_clientes 
UNION ALL
SELECT DISTINCT barrio FROM tabla_de_vendedores;

SELECT DISTINCT barrio, nombre, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes # SOLO CONSIDERA EL ALIAS DEL PRIMER SELECT
UNION ALL
SELECT DISTINCT barrio, nombre, 'Vendedor' AS TIPO_VENDEDOR FROM tabla_de_vendedores;
# No importa que DNI y matricula tengan diferente tamaño, importa el tipo de dato
SELECT DISTINCT barrio, nombre, 'Cliente' AS TIPO_CLIENTE, DNI FROM tabla_de_clientes 
UNION ALL
SELECT DISTINCT barrio, nombre, 'Vendedor' AS TIPO_VENDEDOR, matricula FROM tabla_de_vendedores;
# FULL JOIN
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre, vacaciones
FROM tabla_de_clientes, tabla_de_vendedores WHERE tabla_de_clientes.barrio = tabla_de_vendedores.barrio
UNION 
SELECT tabla_de_clientes.nombre, tabla_de_clientes.ciudad, tabla_de_clientes.barrio, tabla_de_vendedores.nombre,vacaciones
FROM tabla_de_clientes RIGHT JOIN tabla_de_vendedores ON tabla_de_clientes.barrio = tabla_de_vendedores.barrio;

