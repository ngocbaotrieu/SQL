DELIMITER $$
CREATE PROCEDURE student_comment_summary
(
    IN std_id INT
)
BEGIN
	SELECT cmt.student_id AS 'student id', cmt.course_id AS 'course id', COUNT(*) AS 'comments' 
	FROM `comment` AS cmt
	WHERE cmt.student_id = std_id
    GROUP BY cmt.course_id
	ORDER BY cmt.id;
END $$
DELIMITER ;

CALL student_comment_summary(2);
CALL student_comment_summary(4);
CALL student_comment_summary(5);
