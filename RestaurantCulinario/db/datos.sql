INSERT INTO tipoUsuario VALUES (1, 'Administrador');
INSERT INTO tipoUsuario VALUES (2, 'Chef');
INSERT INTO tipoUsuario VALUES (3, 'Camarero');
INSERT INTO tipoUsuario VALUES (4, 'Cajero');
INSERT INTO tipoUsuario VALUES (5, 'Cliente');

INSERT INTO usuario VALUES (1, 1, 'admin', 'admin');
INSERT INTO usuario VALUES (2, 2, 'chef1', 'chef1');
INSERT INTO usuario VALUES (3, 2, 'chef2', 'chef2');
INSERT INTO usuario VALUES (4, 3, 'camarero1', 'camarero1');
INSERT INTO usuario VALUES (5, 3, 'camarero2', 'camarero2');
INSERT INTO usuario VALUES (6, 4, 'cajero1', 'cajero1');
INSERT INTO usuario VALUES (7, 4, 'cajero2', 'cajero2');
INSERT INTO usuario VALUES (8, 5, 'cliente1', 'cliente1');
INSERT INTO usuario VALUES (9, 5, 'cliente2', 'cliente2');

INSERT INTO administrador VALUES (1, 1, 1234, 'Ernesto Perez');

INSERT INTO chef VALUES (1, 2, 2345, 'Nombre Chef 1');
INSERT INTO chef VALUES (2, 3, 3456, 'Nombre Chef 2');

INSERT INTO camarero VALUES (1, 4, 4567, 'Nombre Camarero 1');
INSERT INTO camarero VALUES (2, 5, 5678, 'Nombre Camarero 2');

INSERT INTO cajero VALUES (1, 6, 6789, 'Nombre Cajero 1');
INSERT INTO cajero VALUES (2, 7, 7890, 'Nombre Cajero 2');

INSERT INTO cliente VALUES (1, 8, 8901, 'Nombre Cliente 1');
INSERT INTO cliente VALUES (2, 9, 9012, 'Nombre Cliente 2');

INSERT INTO producto VALUES (1, 'Limonada', 5);

INSERT INTO ingrediente VALUES (1, 'Pan', 10);
INSERT INTO ingrediente VALUES (2, 'Carne', 9);
INSERT INTO ingrediente VALUES (3, 'Lechuga', 11);
INSERT INTO ingrediente VALUES (4, 'Cebolla', 13);
INSERT INTO ingrediente VALUES (5, 'Tomate', 7);

INSERT INTO platillo VALUES (1, 1, 'Hamburguesa', 30);

INSERT INTO pedido VALUES (1, 1, 1, 35);

INSERT INTO factura VALUES (1, 2, 1);