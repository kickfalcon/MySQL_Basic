SELECT * FROM tbcliente;
SELECT * FROM tbcliente WHERE EDAD > 27;
SELECT * FROM tbcliente WHERE EDAD <= 27;
SELECT * FROM tbcliente WHERE EDAD <> 27; #Diferente de
SELECT * FROM tbcliente WHERE EDAD <> 26;
SELECT * FROM tbcliente WHERE nombre > 'Erica Carvajo';# Ordena de manera alfabetica
SELECT * FROM tbcliente WHERE nombre <= 'Erica Carvajo';
SELECT * FROM tbproducto;
SELECT * FROM tbproducto WHERE PRECIO_LISTA = 28.51;# el tipo de dato (Float) no permite que se identifique
SELECT * FROM tbproducto WHERE PRECIO_LISTA > 28.51;
SELECT * FROM tbproducto WHERE PRECIO_LISTA < 28.51;
SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;# Asi se tiene un registro Float
SELECT * FROM tabla_de_vendedores WHERE PORCENTAJE_COMISION > .1;
#Filtro de fechas
SELECT * FROM tbcliente;
SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO = '1995-01-13';
SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO < '1995-01-13';
SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO >= '1995-01-13';
SELECT * FROM tbcliente WHERE YEAR(FECHA_NACIMIENTO)=1995;# toma el año como entero
SELECT * FROM tbcliente WHERE DAY(FECHA_NACIMIENTO)=20;
SELECT * FROM tabla_de_vendedores WHERE YEAR(FECHA_ADMISION) >= 2016;
# FILTRO COMPUESTO
SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;
SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 28.49 AND PRECIO_LISTA <= 28.52;
SELECT * FROM tbproducto WHERE  envase = 'lata' OR envase= 'Botella PET';
SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 25;
SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 25) 
								OR (envase = 'lata' OR envase= 'Botella PET');# para combinar condiciones usamos parentesis
SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND TAMANO = '1 Litro') 
								OR (envase = 'lata' OR envase= 'Botella PET');
SELECT * FROM tabla_de_vendedores;
SELECT * FROM tabla_de_vendedores WHERE YEAR(FECHA_ADMISION)<2016 AND DE_VACACIONES='Si';
SELECT NOMBRE, MATRICULA FROM tabla_de_vendedores;