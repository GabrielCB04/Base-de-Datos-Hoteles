-- Trigger que notifica mediante DBMS_OUTPUT.PUT_LINE si se ha cancelado una reserva

CREATE OR REPLACE TRIGGER alerta_cancelacion AFTER UPDATE ON RESERVAS FOR EACH ROW  

BEGIN

IF UPDATING('estado') THEN  
DBMS_OUTPUT.PUT_LINE('Se ha cancelado una reserva');  
END IF;  

END; 