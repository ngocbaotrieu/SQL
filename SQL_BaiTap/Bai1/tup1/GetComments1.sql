-- NEED TO ADD avt_url to student table
DELIMITER $$
CREATE PROCEDURE get_comments(IN course_id int, IN off_set INT) 
BEGIN
  SELECT cmt.id, cmt.content, cmt.cmmt_time, s.id, s.last_name, s.first_name, s.std_image
  FROM comment cmt
  INNER JOIN student s ON cmt.student_id = s.id
  WHERE 
  cmt.course_id = course_id
  ORDER BY
  cmt.id
  LIMIT
    off_set, 20;
END $$
DELIMITER ;

-- test case:
CALL get_comments(1, 0);
CALL get_comments(36, 0);
CALL get_comments(38, 0);
CALL get_comments(38, 10);