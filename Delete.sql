USE jugos;
#modifcar productos
UPDATE tbproductos SET PRODUCTO = '1041119', sabor='Lima/Limón', precio = 4.90
WHERE Nombre = 'Linea Citrus';
UPDATE tbproductos SET PRODUCTO = '695594' WHERE Nombre = 'Festival de Sabores';
SELECT * FROM tbproductos;
#modificar vendedores
UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION = 0.11 WHERE MATRICULA = '00236';
UPDATE tabla_de_vendedores SET NOMBRE='Joan Geraldo de la Fonseca Junior' WHERE MATRICULA = '00233';
SELECT * FROM tabla_de_vendedores;

# exluir/borrar registros
DELETE FROM tbproductos WHERE producto = '773912';
SELECT * FROM tbproductos;
DELETE FROM tabla_de_vendedores WHERE Matricula = '00233';
SELECT *FROM tabla_de_vendedores;
