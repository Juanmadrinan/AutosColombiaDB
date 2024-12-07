CREATE DATABASE AutosColombia;
USE AutosColombia;

-- Tabla Administrador
CREATE TABLE Administrador (
    tipoIdentificacion VARCHAR(20),
    identificacion INT PRIMARY KEY,
    nombre VARCHAR(100),
    placaVehiculo VARCHAR(10),
    celular VARCHAR(15),
    email VARCHAR(100),
    contraseña VARCHAR(100),
    turno VARCHAR(50)
);

-- Tabla Usuario
CREATE TABLE Usuario (
    tipoIdentificacion VARCHAR(20),
    identificacion INT PRIMARY KEY,
    nombre VARCHAR(100),
    placaVehiculo VARCHAR(10),
    celular VARCHAR(15),
    email VARCHAR(100),
    contraseña VARCHAR(100)
);

-- Tabla Punto_atencion
CREATE TABLE Punto_atencion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

-- Tabla Celda
CREATE TABLE Celda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    estado BOOLEAN
);

-- Tabla Registro_celda
CREATE TABLE Registro_celda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    celda_id INT,
    placa VARCHAR(10),
    FOREIGN KEY (celda_id) REFERENCES Celda(id)
);

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
    placa VARCHAR(10) PRIMARY KEY,
    color VARCHAR(50),
    tipo VARCHAR(50),
    modelo VARCHAR(50),
    marca VARCHAR(50),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(identificacion)
);

-- Tabla Mensualidad
CREATE TABLE Mensualidad (
    id_factura INT PRIMARY KEY AUTO_INCREMENT,
    valor DOUBLE,
    estado BOOLEAN
);
