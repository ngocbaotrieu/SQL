DELIMITER $$
CREATE PROCEDURE student_course_summary
(
    IN std_id INT,
    total DECIMAL(8,2)
)
BEGIN
	SELECT inst.name AS 'institution name', COUNT(*) AS 'bought course', SUM(crs.course_price) AS 'total paid'
	FROM `course` AS crs, `course_created_by` AS b, `institution` AS inst,
        `student` AS std, `enrolled_course` AS enr, `course_session` AS cs
	WHERE std.id = std_id
        AND b.course_id = crs.id
        AND b.institution_id = inst.id
        AND cs.course_id = crs.id
        AND enr.course_session_id = cs.id
        AND enr.student_id = std_id
    GROUP BY inst.id
    HAVING (SUM(crs.course_price) > total)
	ORDER BY inst.id;
END $$
DELIMITER ;

-- test case
CALL student_course_summary(2, 100.0);
CALL student_course_summary(2, 200.0);
CALL student_course_summary(4, 100.0);
CALL student_course_summary(5, 100.0);
