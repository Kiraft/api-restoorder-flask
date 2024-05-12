-- mysql -h 35.232.239.181 -u root -p
-- lolxx4321

DROP DATABASE IF EXISTS resto_order;

CREATE DATABASE resto_order CHARACTER SET utf8 COLLATE utf8_spanish_ci;

USE resto_order;

CREATE TABLE tipos_empleados(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE empleados (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tipos_empleados_id INT UNSIGNED NOT NULL, 
    nombre VARCHAR(255) NOT NULL,
    apellido_p VARCHAR(255) NOT NULL,
    apellido_m VARCHAR(255) NOT NULL,
    rfc VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    code VARCHAR(255) UNIQUE NOT NULL,
    has_account TINYINT(1) DEFAULT 0 NOT NULL,

    FOREIGN KEY (tipos_empleados_id) REFERENCES tipos_empleados(id)
);

CREATE TABLE cuentas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    empleados_id INT UNSIGNED NOT NULL,
    usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,

    FOREIGN KEY (empleados_id) REFERENCES empleados(id)
);

CREATE TABLE categorias_menu(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL
);

CREATE TABLE elementos_menu(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio DOUBLE NOT NULL,
    img VARCHAR(255) NOT NULL,
    categorias_menu_id INT UNSIGNED NOT NULL,
    descripcion VARCHAR(255) NOT NULL,

    FOREIGN KEY (categorias_menu_id) REFERENCES categorias_menu(id)
);

CREATE TABLE mesas(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    status TINYINT(1) DEFAULT 0 NOT NULL,
    capacidad INT NOT NULL
);

CREATE TABLE asignaciones_empleados_mesas(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    mesas_id INT UNSIGNED,
    empleados_id INT UNSIGNED,

    FOREIGN KEY (mesas_id) REFERENCES mesas(id),
    FOREIGN KEY (empleados_id) REFERENCES empleados(id)
);

CREATE TABLE ordenes(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    estado_preparacion VARCHAR(255) NOT NULL,
    cliente VARCHAR(255) NOT NULL,
    empleados_id INT UNSIGNED,
    done TINYINT(1) DEFAULT 0 NOT NULL,
    mesas_id INT UNSIGNED,

    FOREIGN KEY (empleados_id) REFERENCES empleados(id),
    FOREIGN KEY (mesas_id) REFERENCES mesas(id)
);

CREATE TABLE detalles_ordenes(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    precio_unitario DOUBLE NOT NULL,
    precio_total DOUBLE NOT NULL,
    ordenes_id INT UNSIGNED NOT NULL,
    elementos_menu_id INT UNSIGNED NOT NULL,
    comentario VARCHAR(255) NULL,
    FOREIGN KEY (ordenes_id) REFERENCES ordenes(id),
    FOREIGN KEY (elementos_menu_id) REFERENCES elementos_menu(id)
);

SOURCE insert_tipos_empleados.sql;