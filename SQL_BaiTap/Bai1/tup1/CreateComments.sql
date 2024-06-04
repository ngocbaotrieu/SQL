DELIMITER $$
CREATE PROCEDURE create_comment
(
	cmmt_id int,
	crs_id varchar(255),
	std_id varchar(255),
	cmmt_content text,
    c_time datetime
)
BEGIN
	IF (crs_id IS NULL)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid course id';
	END IF;
	--
	IF (std_id IS NULL)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'invalid student id';
	END IF;
	--
	IF (cmmt_content IS NULL OR LENGTH(cmmt_content) = 0)
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'comment have no content';
	END IF;
	-- insert into course table
	IF (cmmt_id IS NULL)
	THEN
		INSERT INTO `comment` VALUES(NULL, crs_id, std_id, cmmt_content, c_time);
	ELSE
		INSERT INTO `comment` VALUES(cmmt_id, crs_id, std_id, cmmt_content, c_time);
	END IF;
END $$
DELIMITER ;

-- test case
CALL create_comment(NULL, 37, 2, 'hello!', '2018-12-20 00:00:00');
CALL create_comment(35, 37, 2, 'hello!', '2018-12-20 00:00:00');