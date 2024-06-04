DELIMITER $$
CREATE FUNCTION total_course_sold(c_id INT) RETURNS DECIMAL(8,2)
BEGIN
    DECLARE number_of_courses DECIMAL(8,2) DEFAULT 0.0;
    DECLARE c_price DECIMAL(8,2);
    --
    IF ((SELECT COUNT(*) FROM `course` WHERE course.id = c_id) = 0)
    THEN
    	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'course not found';
		RETURN 0.0;
    END IF;
    --
    SET c_price = (SELECT course.course_price FROM `course` WHERE course.id = c_id);
    --
    SET number_of_courses = (
        SELECT COUNT(*) FROM `enrolled_course`, `course_session`
        WHERE course_session.course_id = c_id
            AND enrolled_course.course_session_id = course_session.id
    );
    RETURN number_of_courses * c_price;
END $$
DELIMITER ;


