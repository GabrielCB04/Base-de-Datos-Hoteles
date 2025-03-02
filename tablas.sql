-- Crear tabla CLIENTES
CREATE TABLE CLIENTES (
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    apellido VARCHAR2(100),
    email VARCHAR2(100),
    telefono VARCHAR2(15)
);

-- Crear tabla HOTELES
CREATE TABLE HOTELES (
    id_hotel NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    direccion VARCHAR2(100),
    telefono VARCHAR2(15)
);

-- Crear tabla HABITACIONES
CREATE TABLE HABITACIONES (
    id_habitacion NUMBER PRIMARY KEY,
    id_hotel NUMBER,
    numero NUMBER,
    tipo VARCHAR2(100),
    precio NUMBER(10,2),
    CONSTRAINT fk_habitacion_hotel FOREIGN KEY (id_hotel) REFERENCES HOTELES(id_hotel)
);

-- Crear tabla RESERVAS
CREATE TABLE RESERVAS (
    id_reserva NUMBER PRIMARY KEY,
    id_cliente NUMBER,
    id_habitacion NUMBER,
    fecha_inicio DATE,
    fecha_fin DATE,
    estado VARCHAR2(20),
    CONSTRAINT fk_reserva_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    CONSTRAINT fk_reserva_habitacion FOREIGN KEY (id_habitacion) REFERENCES HABITACIONES(id_habitacion)
);