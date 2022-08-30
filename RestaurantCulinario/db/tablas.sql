CREATE TABLE `tipoUsuario` (
  `idTipo` int(2) PRIMARY KEY,
  `tipo` varchar(20)
);

CREATE TABLE `usuario` (
  `idUsuario` int(2) PRIMARY KEY,
  `tipoUsuario` int,
  `user` varchar(20),
  `pass` varchar(20)
);

CREATE TABLE `platillo` (
  `idPlatillo` int(2) PRIMARY KEY,
  `idIngre` int(2),
  `nombrePlatillo` varchar(20),
  `costoPlatillo` int(3)
);

CREATE TABLE `producto` (
  `idProducto` int(2) PRIMARY KEY,
  `nombreProd` varchar(20),
  `costoProducto` int(3)
);

CREATE TABLE `ingrediente` (
  `idIngrediente` int(2) PRIMARY KEY,
  `nombreIng` varchar(20),
  `cantidad` int(3)
);

CREATE TABLE `cliente` (
  `idCliente` int(2) PRIMARY KEY,
  `idUser` int(2),
  `ciCliente` int(2),
  `nombreCliente` varchar(20)
);

CREATE TABLE `camarero` (
  `ideCamarero` int(2) PRIMARY KEY,
  `idUser` int(2),
  `ciCamarero` int(2),
  `nombreCamarero` varchar(20)
);

CREATE TABLE `chef` (
  `idChef` int(2) PRIMARY KEY,
  `idUser` int(2),
  `ciChef` int(2),
  `nombreChef` varchar(20)
);

CREATE TABLE `cajero` (
  `idCajero` int(2) PRIMARY KEY,
  `idUser` int(2),
  `ciCajero` int(2),
  `nombreCajero` varchar(20)
);

CREATE TABLE `administrador` (
  `idAdministrador` int(2) PRIMARY KEY,
  `idUser` int(2),
  `ciAdministrador` int(2),
  `nombreAdministrador` varchar(20)
);

CREATE TABLE `pedido` (
  `idPedido` int(2) PRIMARY KEY,
  `idProd` int(2),
  `idPlat` int(2),
  `costoTotal` int(4)
);

CREATE TABLE `factura` (
  `idFactura` int(2),
  `idCli` int(2),
  `idPed` int(2)
);

ALTER TABLE `ingrediente` ADD FOREIGN KEY (`idIngrediente`) REFERENCES `platillo` (`idIngre`);

ALTER TABLE `tipoUsuario` ADD FOREIGN KEY (`idTipo`) REFERENCES `usuario` (`tipoUsuario`);

ALTER TABLE `cliente` ADD FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUsuario`);

ALTER TABLE `cajero` ADD FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUsuario`);

ALTER TABLE `camarero` ADD FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUsuario`);

ALTER TABLE `chef` ADD FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUsuario`);

ALTER TABLE `administrador` ADD FOREIGN KEY (`idUser`) REFERENCES `usuario` (`idUsuario`);

ALTER TABLE `platillo` ADD FOREIGN KEY (`idPlatillo`) REFERENCES `pedido` (`idPlat`);

ALTER TABLE `producto` ADD FOREIGN KEY (`idProducto`) REFERENCES `pedido` (`idProd`);

ALTER TABLE `cliente` ADD FOREIGN KEY (`idCliente`) REFERENCES `factura` (`idCli`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`idPedido`) REFERENCES `factura` (`idPed`);
