INSERT INTO tbproductos(
Producto, Nombre, Envase, Volumen, Sabor, Precio) VALUES('773912','Clean','Botella Pet','1 litro','Naranja',8.01);
SELECT * FROM tbproductos;
# Agregar Primary key, esta llave evita la duplicidad y mantener la integridad de los datos
ALTER TABLE tbproductos ADD PRIMARY KEY (producto);