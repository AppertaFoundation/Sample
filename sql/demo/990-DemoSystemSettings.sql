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
UPDATE `openeyes`.`setting_installation` SET `value`='off' WHERE `key` = 'uservoice_use_logged_in_user';


-- Add settng overrides for special users
INSERT INTO `openeyes`.`setting_user` (`user_id`, `key`, `value`) VALUES ((SELECT id FROM user WHERE first_name = 'Theatre Diary' AND last_name='Demo User'), 'disable_theatre_diary', 'off');
