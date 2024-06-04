DELIMITER $$
CREATE PROCEDURE student_list_course
(
    IN std_id INT
)
BEGIN
	SELECT DISTINCT crs.course_image, crs.name, inst.name
	FROM `course` AS crs, `course_created_by` AS b, `institution` AS inst,
		`student` AS std, `enrolled_course` AS enr, `course_session` AS cs
	WHERE std.id = std_id
        AND b.course_id = crs.id
        AND b.institution_id = inst.id
        AND cs.course_id = crs.id
        AND enr.course_session_id = cs.id
        AND enr.student_id = std_id
	ORDER BY crs.name;
END $$
DELIMITER ;

-- test case
CALL student_list_course(2); -- 8 rows
CALL student_list_course(3); -- 4 rows
CALL student_list_course(5); -- no result