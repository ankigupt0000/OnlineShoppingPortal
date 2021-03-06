DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_fetch_user_data`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetch_user_data`(p_username VARCHAR(50))
BEGIN
	SELECT fname,lname,sec_question,sec_ans,email,phone,dob FROM users WHERE username = p_username;
END$$

DELIMITER ;
