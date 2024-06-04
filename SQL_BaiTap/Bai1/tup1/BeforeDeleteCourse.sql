DELIMITER $$
CREATE TRIGGER before_delete_course
BEFORE DELETE ON `course`
FOR EACH ROW
BEGIN
    DECLARE c_status BIT;
    DECLARE s_id INT;
    SET c_status = OLD.active;
    IF(c_status = 1)
   	THEN
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'this course status is active, cannot delete this course';
    END IF;
    -- update number of courses in specialization
    IF (OLD.specialization_id IS NOT NULL)
	THEN
        SET s_id = OLD.specialization_id;
		UPDATE specialization SET num_of_courses = num_of_courses - 1 WHERE id = s_id;
	END IF;
END $$
DELIMITER ;

-- test case
DELETE FROM `course` WHERE course.id = 50;

UPDATE `course` SET course.active = 0 WHERE course.id = 50;
DELETE FROM `course` WHERE course.id = 50;