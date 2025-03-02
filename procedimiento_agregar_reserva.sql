-- Procedimiento que permite agregar reservas si las fechas están disponibles

CREATE OR REPLACE PROCEDURE agregar_reserva ( inicio DATE, fin DATE, habitacion_id NUMBER, cliente_id NUMBER ) AS  
cont NUMBER := 0; 
cont_id NUMBER := 0;  

BEGIN  
SELECT MAX(id_reserva) INTO cont_id FROM RESERVAS; cont_id := cont_id + 1;  

SELECT COUNT(*) INTO cont FROM RESERVAS WHERE id_habitacion = habitacion_id AND estado = 'ACTIVA' AND ( inicio BETWEEN fecha_inicio AND fecha_fin 
OR fin BETWEEN fecha_inicio AND fecha_fin OR (fecha_inicio BETWEEN inicio AND fin) OR (fecha_fin BETWEEN inicio AND fin) );  

IF cont = 0 THEN INSERT INTO RESERVAS (id_reserva, id_cliente, id_habitacion, fecha_inicio, fecha_fin, estado) 
VALUES (cont_id, cliente_id, habitacion_id, inicio, fin, 'ACTIVA');  
COMMIT;   
ELSE DBMS_OUTPUT.PUT_LINE('Error: La habitación ya está reservada en esas fechas.');  
END IF;  

END agregar_reserva;  