USE jugos;
# insertar productos
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('773912','Clean','Botella Pet','1 litro','Naranja',8.01);
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('838819','Clean','Botella Pet','1.5 litro','Naranja',12.01);
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('1037797','Clean','Botella Pet','2 litro','Naranja',16.01);
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('812829','Clean','Lata','350 ml','Naranja',2.81);
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('685594','Festival de Sabores','Botella Pet','1.5 litros',
'Asai',28.51);
INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('1041129','Linea Citrus','Botella de Vidrio','700 ml',
'Lima',4.90);
SELECT * FROM tbproductos;
# vendedores
INSERT INTO tabla_de_vendedores(MATRICULA, NOMBRE, PORCENTAJE_COMISION) VALUES ('00233','Joan Geraldo de la Fonseca',0.1);
INSERT INTO tabla_de_vendedores(MATRICULA, NOMBRE, PORCENTAJE_COMISION) VALUES ('00235','Márcio Almeida Silva',0.08);
INSERT INTO tabla_de_vendedores(MATRICULA, NOMBRE, PORCENTAJE_COMISION) VALUES ('00236','Claudia Morais',0.08);
SELECT * FROM tabla_de_vendedores;