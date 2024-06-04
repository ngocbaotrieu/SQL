DELIMITER $$
CREATE TRIGGER before_insert_comment
BEFORE INSERT ON `comment`
FOR EACH ROW
BEGIN
    DECLARE crs_id INT;
    DECLARE std_id INT;
    DECLARE c_time date;
    DECLARE commented INT;
    SET crs_id = NEW.course_id;
    SET std_id = NEW.student_id;
    SET c_time = DATE(NEW.cmmt_time);
    --
    SET commented = (
        SELECT COUNT(*) FROM `comment`
        WHERE course_id = crs_id
        AND student_id = std_id
        AND DATE(cmmt_time) = c_time
    );
    IF(commented = 20)
    THEN
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'cannot comment';
    END IF;
END $$
DELIMITER ;