DELIMITER $$
CREATE PROCEDURE get_all_courses()
BEGIN
    SELECT course.id, course.name, institution.name
    FROM `course`, `institution`, `course_created_by`
    WHERE course_created_by.course_id = course.id
        AND course_created_by.institution_id = institution.id;
END $$
DELIMITER ;

CALL get_all_courses();