DELIMITER $$
CREATE TRIGGER after_insert_course
AFTER INSERT ON `course`
FOR EACH ROW
BEGIN
	DECLARE c_id INT;
	DECLARE s_id INT;
	DECLARE c_min_grade DECIMAL(5,2);
	SET c_min_grade = NEW.min_grade;
	--
	IF(NEW.id IS NOT NULL)
	THEN
		SET c_id = NEW.id;
		IF(c_id < 0)
		THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'course id could not be a negative integer';
		END IF;
	END IF;
	--
	IF(c_min_grade < 0.0) OR (c_min_grade > 10.0)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'min grade must in range [0.0, 10.0]';
	END IF;
	-- update number of courses in specialization
	IF (NEW.specialization_id IS NOT NULL)
	THEN
        SET s_id = NEW.specialization_id;
		UPDATE specialization SET num_of_courses = num_of_courses + 1 WHERE id = s_id;
	END IF;
END $$ 
DELIMITER ;

-- test case
CALL create_course(-60, 'Hoc may',  NULL, 'We remains committed to providing certificate', 'Learn Machine learning', NULL, 5.0, 75.0, 1);
CALL create_course(60, 'Hoc may',  NULL, 'We remains committed to providing certificate', 'Learn Machine learning', NULL, 10.5, 75.0, 1);
CALL create_course(NULL, 'Hoc may',  NULL, 'We remains committed to providing certificate', 'Learn Machine learning', NULL, 5.0, 75.0, 1);
