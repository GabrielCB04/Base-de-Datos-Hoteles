-- Vista para mostrar las reservas junto con los detalles de los clientes y habitaciones

CREATE VIEW DETALLES_RESERVA AS  

SELECT r.fecha_inicio AS Inicio, r.fecha_fin AS FIN, r.estado AS Estado, c.nombre AS Nombre, 
c.apellido AS Apellido, c.email AS Email, c.telefono AS Numero, h.tipo, h.precio, hh.nombre AS Hotel  

from reservas r INNER JOIN clientes c ON r.id_cliente = c.id_cliente 
INNER JOIN habitaciones h on r.id_habitacion = h.id_habitacion 
INNER JOIN hoteles hh on h.id_hotel = hh.id_hotel; 