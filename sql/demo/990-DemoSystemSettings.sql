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
INSERT INTO `openeyes`.`setting_installation` (`key`, `value`) VALUES ('disable_theatre_diary', 'on');

-- turn off dose/freq requirement for meds
INSERT INTO `openeyes`.`setting_metadata` (`field_type_id`, `key`, `name`, `data`, `default_value`) VALUES ('3', 'enable_concise_med_history', 'Require Dose/Freq for all meds', 'a:2:{s:2:\"on\";s:2:\"On\";s:3:\"off\";s:3:\"Off\";}', 'off');
INSERT INTO `openeyes`.`setting_installation` (`key`, `value`) VALUES ('enable_concise_med_history', 'off');
