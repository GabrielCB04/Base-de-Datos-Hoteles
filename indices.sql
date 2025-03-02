-- Índices para algunas columnas usadas con frecuencia (las columnas ID ya tienen índices por ser claves primarias)

CREATE INDEX indice_nombre_cliente ON CLIENTES(nombre);  

CREATE INDEX indice_estado_reserva ON RESERVAS(estado);  

CREATE INDEX indice_precio_habitacion ON HABITACIONES(precio);  

CREATE INDEX indice_tel_hotel ON HOTELES(telefono); 