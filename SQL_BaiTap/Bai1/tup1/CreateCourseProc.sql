DELIMITER $$
CREATE PROCEDURE create_course
(
	c_id int,
	c_name varchar(255),
	c_image blob,
	c_commitment varchar(255),
	c_description text,
	c_specialization_id int,
	c_min_grade decimal(5,2),
	c_price decimal(8,2),
	c_active bit
)
sp: BEGIN
	--
	IF (c_name IS NULL OR LENGTH(c_name) = 0)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course name';
		LEAVE sp;
	END IF;
	--
	IF (c_commitment IS NULL OR LENGTH(c_commitment) = 0)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course commitment';
		LEAVE sp;
	END IF;
	--
	IF (c_description IS NULL OR LENGTH(c_description) = 0)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course description';
		LEAVE sp;
	END IF;
	--
	IF (c_min_grade IS NULL)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course min grade';
		LEAVE sp;
	END IF;
	--
	IF (c_price IS NULL)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course price';
		LEAVE sp;
	END IF;
	--
	IF (c_active IS NULL)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course activation';
		LEAVE sp;
	END IF;
	-- insert into course table
    IF (c_id IS NULL)
    THEN
		INSERT INTO `course`
		VALUES(NULL, c_name, c_image, c_commitment, c_description, c_specialization_id, c_min_grade, c_price, c_active);
    ELSE
    	INSERT INTO `course`
		VALUES(c_id, c_name, c_image, c_commitment, c_description, c_specialization_id, c_min_grade, c_price, c_active);
    END IF;
END $$
DELIMITER ;

-- test cases
CALL create_course(NULL, 'Nhap mon Tri tue nhan tao',  NULL, 'We remains committed to providing certificate', 'Learn AI', NULL, 5.0, 75.0, 1);
CALL create_course(50, 'Xu ly ngon ngu tu nhien',  NULL, 'We remains committed to providing certificate', 'Learn NLP', NULL, 5.0, 75.0, 1);
CALL create_course(NULL, 'Xay dung chuong trinh dich',  NULL, 'We remains committed to providing certificate', 'Learn NLP', NULL, 5.0, NULL, 1);
CALL create_course(NULL, '',  NULL, 'We remains committed to providing certificate', 'Learn AI', NULL, 5.0, 75.0, 1);
CALL create_course(NULL, '',  NULL, '', 'Learn NLP', NULL, 5.0, 75.0, 1);

