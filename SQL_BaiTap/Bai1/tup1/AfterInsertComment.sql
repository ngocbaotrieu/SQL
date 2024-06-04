DELIMITER $$
CREATE TRIGGER after_update_comment
AFTER UPDATE ON `comment`
FOR EACH ROW
BEGIN
	INSERT INTO `update_comment`
    VALUES(NULL, OLD.id, OLD.content, OLD.cmmt_time);
END $$
DELIMITER ;

-- test case
UPDATE `comment` SET content = 'cô cho điểm rất cao', cmmt_time = NOW()
WHERE id = 10;
UPDATE `comment` SET content = 'cô cho điểm rất rất cao', cmmt_time = NOW()
WHERE id = 10;
UPDATE `comment` SET content = 'mà cũng hên xui nữa', cmmt_time = NOW()
WHERE id = 10;

SELECT * FROM `update_comment`
WHERE comment_id = 10
ORDER BY cmmt_time;

SELECT * FROM `comment`
WHERE id = 10;