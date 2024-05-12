-- mysql -h 35.239.87.59 -u root -p
-- lolxx4321

USE resto_order;

DELETE FROM empleados;

INSERT INTO empleados (tipos_empleados_id, nombre, apellido_p, apellido_m, rfc, email, code, has_account) VALUES
 (
    1,
    "Jonathan Osvaldo",
    "Bustamante",
    "Monroy",
    "BUMJ991113HMSSNN05",
    "joniosva@gmail.com",
    "BUMJ",
    1
 ),
 (
    1,
    "Melani Lizeth",
    "Hernandez",
    "Mena",
    "BUMJ991113HMSSNN06",
    "21680098@cuautla.tecnm.mx",
    "HEMM",
    1
 ),
 (
    2,
    "Yamir",
    "Zequera",
    "Ayala",
    "BUMJ991113HMSSNN07",
    "21680203@cuautla.tecnm.mx",
    "ZEAY",
    1
 );

 SOURCE insert_cuentas.sql;