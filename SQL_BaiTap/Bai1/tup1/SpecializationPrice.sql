DELIMITER $$
CREATE FUNCTION specialization_price(s_id INT) RETURNS DECIMAL(8,2)
BEGIN
	DECLARE finished BIT;
    DECLARE partial DECIMAL(8,2);
	DECLARE total DECIMAL(8,2) DEFAULT 0.0;
    DECLARE sale DECIMAL(8,2);
    DECLARE this_cursor CURSOR FOR (SELECT course.course_price FROM `course` WHERE course.specialization_id = s_id);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
    --
    IF ((SELECT COUNT(*) FROM `specialization` WHERE specialization.id = s_id) = 0)
    THEN
    	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'specialization not found';
		RETURN 0.0;
    END IF;
    --
    SET sale = (SELECT specialization.specialization_discount FROM `specialization` WHERE specialization.id = s_id);
    OPEN this_cursor;
    reduce: LOOP
    	FETCH this_cursor INTO partial;
    	IF (finished = 1)
        THEN
      		LEAVE reduce;
    	END IF;
    	SET total = total + partial;
    END LOOP;
    CLOSE this_cursor;
    RETURN total - sale;
END $$
DELIMITER ;
