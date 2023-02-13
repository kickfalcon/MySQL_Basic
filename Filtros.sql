SELECT * FROM tbcliente;
SELECT DNI, NOMBRE FROM tbcliente;
SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente;
SELECT NOMBRE AS Nombre_Completo, SEXO AS Genero, EDAD AS Años, DIRECCION1 AS Domicilio FROM tbcliente;
SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente LIMIT 6;
SELECT matricula, nombre from tabla_de_vendedores;
#Registros Especificos
SELECT * FROM tbproducto;
SELECT * FROM tbproducto WHERE SABOR ='Maracuyá';
SELECT * FROM tbproducto WHERE SABOR ='Citrico';
SELECT * FROM tbproducto WHERE Envase ='Botella de Vidrio';
UPDATE tbproducto SET sabor = 'Citrico' WHERE sabor = 'Limón';
SELECT * FROM tabla_de_vendedores WHERE nombre = 'Claudia Morais';
