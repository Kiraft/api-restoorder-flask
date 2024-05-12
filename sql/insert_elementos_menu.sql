USE resto_order;

DELETE FROM elementos_menu;

--Insertar postres
INSERT INTO elementos_menu (nombre, precio, categorias_menu_id, img, descripcion) VALUES
(
    "PANQUE AROMA",
    84,
    3,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/postres/panque-aroma.PNG',
    "Ingredientes: Panque al estilo aroma."
),
(
    "TIRAMISU AROMA",
    100,
    3,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/postres/tiramisu.PNG',
    "Ingredientes: Pastel, chocolate y azucar."
),
(
    "TRUFA",
    120,
    3,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/postres/trufa-aroma.PNG',
    "Ingredientes: Seta, queso"
),
(
    "BROWNIE",
    80,
    3,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/postres/browne.PNG',
    "Ingredientes: Chocolate, leche y queso."
),
(
    "POLVORONES DE NUEZ",
    68,
    3,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/postres/polvorones-nuez.PNG',
    "Ingredientes: Nuez, leche, azucar y azucar glass."
);

--Insertar asiatica
INSERT INTO elementos_menu (nombre, precio, categorias_menu_id, img, descripcion) VALUES
(
    "SOPA RAMEN",
    105,
    2,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/asiatica/ramen.PNG',
    "Ingredientes: Fideos asiaticos, pollo o carne, huevo frito y verduras."
),
(
    "ATUN PREPARADO",
    135,
    2,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/asiatica/atun-preparado.PNG',
    "Ingredientes: Atun (pescado), verduras y especias."
),
(
    "SALMON CON QUESO CREMA",
    149,
    2,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/asiatica/salon-queso-crema.PNG',
    "Ingredientes: Salmon (pescado y queso-crema.)"
),
(
    "KANIKAMA",
    125,
    2,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/asiatica/kanikama.PNG',
    "Ingedientes: Rollitos de cangrejo y especias."
),
(
    "YAKIMESHI",
    91,
    2,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/asiatica/yakimeshi.PNG',
    "Ingredientes: Arroz japones, verduras y soya."
);

--Insertar cafe
INSERT INTO elementos_menu (nombre, precio, categorias_menu_id, img, descripcion) VALUES
(
    "AMERICANO LIGERO",
    32,
    4,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/cafe/cafe-ligero.PNG',
    "Ingredientes: Cafe molido, azucar y agua."
),
(
    "CAFE LATTE SUPREMO",
    76,
    4,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/cafe/cafe-latte.PNG',
    "Ingedientes: Leche, espuma de leche, cafe molido."
),
(
    "CAFE MOKA BLANCO",
    60,
    4,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/cafe/cafe-moka.PNG',
    "Ingredientes: Cafe estilo moka molido, agua y azucar."
),
(
    "PRENSA FRANCESA",
    125,
    4,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/cafe/prensa-francesa.PNG',
    "Ingredientes: Cafe en grano, agua y azucar."
),
(
    "CAFE ESPRESSO",
    91,
    4,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/cafe/cafe-spresso.PNG',
    "Ingredientes: Cafe molido fino y agua."
);

--Insertar internacional
INSERT INTO elementos_menu (nombre, precio, categorias_menu_id, img, descripcion) VALUES
(
    "PECHUGA A LA PARMESANA",
    240,
    1,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/internacional/lechuga-parmesana.PNG',
    "Ingredientes: Pechuga, salsa de tomate rojo, sal, pan molido y aceite de oliva."
),
(
    "HAMBURGUESA BISTRO",
    235,
    1,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/internacional/hamburgesa-bistro.PNG',
    "Ingredientes: Pan, carne para hamburguesa, jitomate, cebolla, queso amarillo, pepinillos y lechuga."
),
(
    "ENCHILADAS VERDES",
    198,
    1,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/internacional/enchiladas.PNG',
    "Ingredientes: Tortilla frita, salsa, relleno pollo, queso, crema y cebolla."
),
(
    "CHILAQUILES NATURALES",
    159,
    1,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/internacional/chilaquiles-naturales.PNG',
    "Ingredientes: Tortillas doradas, queso, crema y cebolla."
),
(
    "OMELET MEXICANO",
    91,
    1,
    'src/main/resources/com/application/restoorderapp/assets/img-platillos/internacional/omelet-mexicano.PNG',
    "Ingredientes: Huevo, chile, jitomate y queso."
);

 SOURCE insert_mesas.sql;
