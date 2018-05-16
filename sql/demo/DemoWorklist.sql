/***********************************************************************
* OpenEyes Demo Loader file
************************************************************************
* This file creates perpetual 'automatic' worklists for all contexts,
* containing patients used for demontration
************************************************************************/

/* Create worklist Definitions */
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Cataract Demo Patients','Patients for cataract demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:45:14',NULL,0,0,1,'2017-05-09 11:45:14',1,'2017-05-09 11:45:14');
SET @catd=LAST_INSERT_ID();
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Medical Retina Demo Patients','Patients for MR demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:45:48',NULL,0,0,1,'2017-05-09 11:45:48',1,'2017-05-09 11:45:48');
SET @mrd=LAST_INSERT_ID();
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Glaucoma Demo Patients','Patients for Glaucoma demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
SET @gcd=LAST_INSERT_ID();
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Vitreoretinal Demo Patients','Patients for Vitreoretinal demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
SET @vrd=LAST_INSERT_ID();
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Paediatric Demo Patients','Patients for Paediatric demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
SET @pad=LAST_INSERT_ID();
INSERT INTO `worklist_definition` (`name`,`description`,`worklist_name`,`rrule`,`start_time`,`end_time`,`active_from`,`active_until`,`scheduled`,`display_order`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES ('Blank Demo Patients','Empty patient records for demos',NULL,'FREQ=DAILY','08:00:00','17:00:00','2099-05-09 11:47:51',NULL,0,0,1,'2017-05-09 11:48:18',1,'2017-05-09 11:47:51');
SET @bld=LAST_INSERT_ID();


/*Create Worklist instances*/
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Cataract Demo Patients','Patients for cataract demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:58:42',1,'2017-05-09 12:58:42',@catd);
SET @cat=LAST_INSERT_ID();
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Medical Retina Demo Patients','Patients for MR demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:08',1,'2017-05-09 12:59:08',@mrd);
SET @mr=LAST_INSERT_ID();
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Glaucoma Demo Patients','Patients for Glaucoma demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',@gcd);
SET @gc=LAST_INSERT_ID();
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Vitreoretinal Demo Patients','Patients for Vitreoretinal demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',@vrd);
SET @vr=LAST_INSERT_ID();
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Paediatric Demo Patients','Patients for Paediatric demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',@pad);
SET @pa=LAST_INSERT_ID();
INSERT INTO `worklist` (`name`,`description`,`start`,`end`,`scheduled`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`worklist_definition_id`) VALUES ('Blank Demo Patients','Empty patient records for demos','2049-05-09 00:00:00','2017-05-09 17:00:00',1,1,'2017-05-09 12:59:10',1,'2017-05-09 12:59:10',@bld);
SET @bl=LAST_INSERT_ID();

/* Add Cataract Patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @cat, id from patient p where p.hos_num
	in (
    '1009604',
	'1009605',
	'1008003',
	'1009412',
	'1009411',
	'1007942',
	'1009402',
	'1911438'
    );

/* Add MR Patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @mr, id from patient p where p.hos_num
	in (
    '1140873',
    '1152572',
    -- '1776515',
	-- '1796962',
	'1835099',
	'1840181',
	'1869032'
	-- '1897143'
    );

/* Add Glaucoma patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @gc, id from patient p where p.hos_num
	in (
    '1009797',
	'0755231',
	'1009068'
    );

/* Add Empty patients */
Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @bl, id from patient p where p.hos_num
	in (
    '0000001',
    '0000002',
	'0000003',
	'0000004',
	'0000005'
    );

/* Add VR patients */
	Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @vr, id from patient p where p.hos_num
	in (
    '1932578'
    );

/* Add Paeds patients */
	Insert INTO openeyes.worklist_patient (worklist_id, patient_id) SELECT @pa, id from patient p where p.hos_num
	in (
	'1009091'
	);


/* SET Order */
-- Cataract
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:00' WHERE `patient_id`='19573';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:05' WHERE `patient_id`='19574';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:10' WHERE `patient_id`='19372';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:15' WHERE `patient_id`='19382';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:20' WHERE `patient_id`='19381';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:45:00' WHERE `patient_id`='17914';
UPDATE `worklist_patient` SET `when`='0000-00-00 10:15:10' WHERE `patient_id`='17975';
UPDATE `worklist_patient` SET `when`='0000-00-00 10:30:10' WHERE `patient_id`='2126199';
-- Glaucoma
UPDATE `worklist_patient` SET `when`='0000-00-00 09:00:00' WHERE `patient_id`='19766';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:15:00' WHERE `patient_id`='19038';
UPDATE `worklist_patient` SET `when`='0000-00-00 09:30:00' WHERE `patient_id`='1961284';
