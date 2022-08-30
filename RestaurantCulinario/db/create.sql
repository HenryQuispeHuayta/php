create table tipoUsuario(
  idUsuario int(2),
  tipo varchar(20)
);
create table usuario(
  idUsuario int(2),
  tipoU int(2),
  user varchar(20),
  pass varchar(20)
);
create table platillo(
  idPlatillo int(2),
  nombre varchar(20)
);
create table productos(
  idProducto int(2),
  nombre varchar(20)
);
create table ingrediente(
  idIngrediente int(2),
  nombreIng varchar(20)
)
