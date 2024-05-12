
USE resto_order;

DELETE FROM categorias_menu;

INSERT INTO categorias_menu (categoria) VALUES ("INTERNACIONAL"), ("ASIATICA"), ("POSTRES"), ("CAFE");

SOURCE insert_elementos_menu.sql;