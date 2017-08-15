/***********************************************************************
* OpenEyes Demo Loader file
************************************************************************
* This sets up some of the available system settings
************************************************************************/

/*settings */
UPDATE `openeyes`.`setting_installation` SET `value`='.please@set.me.' WHERE `id`='1';
UPDATE `openeyes`.`setting_installation` SET `value`='.please@set.me.' WHERE `id`='2';
UPDATE `openeyes`.`setting_installation` SET `value`='' WHERE `id`='3';
UPDATE `openeyes`.`setting_installation` SET `value`='<a href="http://www.abehr.com" target="_blank">www.abehr.com</a>' WHERE `id`='4';
UPDATE `openeyes`.`setting_installation` SET `value`='.please@set.me.' WHERE `id`='6';

-- fix disable_theatre_diary
-- INSERT INTO `openeyes`.`setting_installation` (`key`, `value`) VALUES ('disable_theatre_diary', 'on');

-- turn off dose/freq requirement for meds
-- INSERT INTO `openeyes`.`setting_metadata` (`field_type_id`, `key`, `name`, `data`, `default_value`) VALUES ('3', 'enable_concise_med_history', 'Require Dose/Freq for all meds', 'a:2:{s:2:\"on\";s:2:\"On\";s:3:\"off\";s:3:\"Off\";}', 'off');
-- INSERT INTO `openeyes`.`setting_installation` (`key`, `value`) VALUES ('enable_concise_med_history', 'off');


/************************************************
* Setup special users for settings demonstrations
*************************************************/
-- -- Add contacts
-- INSERT INTO `contact` (`primary_phone`, `title`, `first_name`, `last_name`) VALUES ('01234567890', 'Mr', 'Theatre Diary', 'Demo User');
-- SET @ThDiCnt = LAST_INSERT_ID();
--
-- INSERT INTO `audit` (`action_id`, `type_id`,`data`) VALUES (4, 8, @ThDiCnt);
--
-- -- Create Users
-- INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`, `last_firm_id`)
-- SELECT 'theatrediarydemo', 'Theatre Diary', 'Demo User', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1',
--         @ThDiCnt, '297';
-- SET @ThDiUsr = LAST_INSERT_ID();
--
-- -- Set special permissions
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Schedule operation', @ThDiUsr;
--
-- -- Set basic login permissions for all
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'User', u.id FROM user u WHERE u.id in (@ThDiUsr);
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'View clinical', u.id FROM user u WHERE u.id in (@ThDiUsr);
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Edit', u.id FROM user u WHERE u.id in (@ThDiUsr);


-- Add settng overrides for special users
INSERT INTO `openeyes`.`setting_user` (`user_id`, `key`, `value`) VALUES ((SELECT id FROM user WHERE first_name = 'Theatre Diary' AND last_name='Demo User'), 'disable_theatre_diary', 'off');
