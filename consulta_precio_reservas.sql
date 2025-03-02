-- Consulta que muestra la cantidad de reservas activas por hotel y el precio máximo de las habitaciones de cada hotel

SELECT hh.nombre AS HOTEL, COUNT(r.id_reserva) AS TOTAL_RESERVAS, MAX(h.precio) AS PRECIO_MAX  

FROM reservas r INNER JOIN habitaciones h ON r.id_habitacion = h.id_habitacion 
INNER JOIN hoteles hh ON h.id_hotel = hh.id_hotel WHERE r.estado='ACTIVA'                                            
GROUP BY hh.nombre; 