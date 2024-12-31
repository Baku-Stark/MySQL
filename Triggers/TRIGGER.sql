DELIMITER //

CREATE TRIGGER validate_age_before_insert_update
BEFORE INSERT ON Clients
FOR EACH ROW
BEGIN
    IF NEW.age <= 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A idade do cliente deve ser maior que 18.';
    END IF;
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER validate_age_before_update
BEFORE UPDATE ON Clients
FOR EACH ROW
BEGIN
    IF NEW.age <= 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A idade do cliente deve ser maior que 18.';
    END IF;
END;
//

DELIMITER ;

