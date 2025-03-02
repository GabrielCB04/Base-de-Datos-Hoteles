-- Función que calcula el precio total de una reserva en función de los días que dura la misma y el precio de la habitación reservada

CREATE OR REPLACE FUNCTION total_pago (id NUMBER)  
RETURN NUMBER IS  

inicio DATE;  
fin DATE;  
dias NUMBER;  
precio NUMBER;  
precio_total NUMBER;  

BEGIN  

SELECT fecha_inicio INTO inicio FROM reservas where id_reserva = id ; SELECT fecha_fin INTO fin FROM reservas where id_reserva = id ;  
dias := fin - inicio;  

SELECT h.precio INTO PRECIO FROM reservas r INNER JOIN habitaciones h ON r.id_habitacion = h.id_habitacion WHERE r.id_reserva=id; 
precio_total := precio * dias;  

RETURN precio_total;  

END; 