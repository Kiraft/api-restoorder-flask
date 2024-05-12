-- mysql -h 35.232.239.181 -u root -p
-- lolxx4321

USE resto_order;

DELETE FROM cuentas;

INSERT INTO cuentas (empleados_id, usuario, password) VALUES
 (
    1,
    "kiraft",
    "4321"
 ),
 (
     2,
     "mela",
     "4321"
 ),
 (
    3,
    "yamir",
    "4321"
 );

 SOURCE insert_categorias_menu.sql;