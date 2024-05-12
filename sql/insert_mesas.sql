USE resto_order;

DELETE FROM mesas;

INSERT INTO mesas (status, capacidad) VALUES
(
    0,
    5
),
(
    0,
    6
),
(
    0,
    5
),
(
    0,
    4
),
(
    0,
    5
),
(
    0,
    6
),
(
    0,
    5
),
(
    0,
    4
);

SOURCE insert_asignaciones_empleados_mesas.sql;