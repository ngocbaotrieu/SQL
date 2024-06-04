DELIMITER $$
CREATE FUNCTION count_comment(std_id INT, crs_id INT) RETURNS INT
BEGIN
  DECLARE count_cmt INT DEFAULT 0;
  --
  IF ((SELECT COUNT(*) FROM `student` WHERE id = std_id) = 0)
  THEN
    SIGNAL SQLSTATE '45000'
	  SET MESSAGE_TEXT = 'student not found';
  END IF;
  --
  IF ((SELECT COUNT(*) FROM `course` WHERE id = crs_id) = 0)
  THEN
    SIGNAL SQLSTATE '45000'
	  SET MESSAGE_TEXT = 'course not found';
  END IF;
  --
  SET count_cmt = (SELECT COUNT(*) FROM `comment` WHERE student_id = std_id AND course_id = crs_id);
  RETURN count_cmt;
END $$
DELIMITER ;

SELECT count_comment(2, 38);
