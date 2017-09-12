use openeyes;

-- Allergies
INSERT INTO `archive_patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '1', '2016-01-01 01:01:01', '2016-01-01 01:01:01', 'Test migration 1');
INSERT INTO `archive_patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '2', '2016-02-02 02:02:02', '2016-02-02 02:02:02', 'Test Migration 2');
INSERT INTO `archive_patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '3', '2016-03-03 03:03:03', '2016-03-03 03:03:03', 'Test Migration 3');
--INSERT INTO `archive_patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_date`, `created_date`, `comments`) VALUES ('1990875', '4', '2016-04-04 04:04:04', '2016-04-04 04:04:04', 'Test Migration 4');
INSERT INTO `archive_patient_allergy_assignment` (`patient_id`, `allergy_id`, `last_modified_user_id`, `last_modified_date`, `created_user_id`, `created_date`, `other`, `comments`) VALUES ('1990875', '17', '1', '2017-06-29 09:31:10', '1', '2017-06-29 09:31:10', 'Test Other Allery', 'Test Migration 5');
-- Test history of edits
DELETE FROM `archive_patient_allergy_assignment_version` WHERE id=1448;
INSERT INTO `archive_patient_allergy_assignment_version` (`id`,`patient_id`,`allergy_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`version_date`,`version_id`,`other`,`comments`) VALUES (1448,1990875,4,1,'2016-04-04 04:04:04',1,'2016-04-04 04:04:04','2017-06-29 10:56:25',13,NULL,'Test Migration 4');

-- Past Ophtalmic Surgery
INSERT INTO `archive_previous_operation` (`patient_id`, `side_id`, `operation`, `date`) VALUES ('1990875', '1', 'Refractive Surgery', '2011-11-12');
INSERT INTO `archive_previous_operation` (`patient_id`, `side_id`, `operation`, `date`) VALUES ('1990875', '2', 'Extraction of foreign body from cornea', '2015-02-04');
INSERT INTO `archive_previous_operation` (`patient_id`, `side_id`, `operation`, `date`) VALUES ('1990875', '3', 'Exfoliation of lashes', '2016-10-03');


-- Systemic diagnoses
INSERT INTO `secondary_diagnosis` (`disorder_id`, `eye_id`, `patient_id`, `date`) VALUES ('253005', '1', '1990875', '2017-01-01');
INSERT INTO `secondary_diagnosis` (`disorder_id`, `patient_id`, `date`) VALUES ('486006', '1990875', '2017-02-02');
INSERT INTO `secondary_diagnosis` (`disorder_id`, `eye_id`, `patient_id`, `date`) VALUES ('3044008', '3', '1990875', '2017-03-03');
INSERT INTO `secondary_diagnosis` (`disorder_id`, `patient_id`, `date`) VALUES ('284223003', '1990875', '2017-04-05');


-- Risks
INSERT INTO `archive_patient_risk_assignment` (`patient_id`, `risk_id`, `comments`) VALUES ('1990875', '1', 'Test 1');
INSERT INTO `archive_patient_risk_assignment` (`patient_id`, `risk_id`, `comments`) VALUES ('1990875', '2', 'Test 2');
INSERT INTO `archive_patient_risk_assignment` (`patient_id`, `risk_id`, `comments`) VALUES ('1990875', '3', 'Test 3');
INSERT INTO `archive_patient_risk_assignment` (`patient_id`, `risk_id`, `comments`, `other`) VALUES ('1990875', '5', 'Test 4', 'Undergoing Clinical Trials');
INSERT INTO `archive_patient_risk_assignment` (`patient_id`, `risk_id`, `comments`) VALUES ('1990875', '16', 'Warfarin');

-- Family History
INSERT INTO `archive_family_history` (`patient_id`, `relative_id`, `side_id`, `condition_id`, `comments`) VALUES ('1990875', '1', '1', '1', 'Test Comment');
INSERT INTO `archive_family_history` (`patient_id`, `relative_id`, `side_id`, `condition_id`) VALUES ('1990875', '2', '2', '2');
INSERT INTO `archive_family_history` (`patient_id`, `relative_id`, `side_id`, `condition_id`, `comments`, `other_relative`, `other_condition`) VALUES ('1990875', '10', '4', '7', 'Test custom relative and condition', 'Cousin twice removed', 'Stroke');

--
INSERT INTO `archive_socialhistory` (`patient_id`, `occupation_id`, `smoking_status_id`, `accommodation_id`, `comments`, `carer_id`, `alcohol_intake`, `substance_misuse_id`)
VALUES ('1990875', '1', '1', '1', 'Sheltered accommodation - Carer visits twice daily', '1', '31', '1');
INSERT INTO `archive_socialhistory` (`patient_id`, `smoking_status_id`, `accommodation_id`, `carer_id`)
VALUES ('1935214', '1', '2', '1' );

-- medications
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (1990875,4,10,NULL,2,'2017-08-31',NULL,1,'2017-08-31 17:12:23',1,'2017-08-31 17:12:23',' mg',NULL,NULL,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (1990875,793,1,2,3,'2017-01-00',NULL,1,'2017-08-31 17:12:47',1,'2017-08-31 17:12:47','1 drop(s)',NULL,NULL,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (1990875,NULL,NULL,NULL,NULL,'2017-00-00',NULL,1,'2017-08-31 17:13:04',1,'2017-08-31 17:13:04',NULL,NULL,2,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (1990875,NULL,10,NULL,NULL,'2017-08-31',NULL,1,'2017-08-31 17:13:24',1,'2017-08-31 17:13:24',NULL,NULL,657,0);

INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (19038,4,10,NULL,2,'2017-08-31',NULL,1,'2017-08-31 17:12:23',1,'2017-08-31 17:12:23',' mg',NULL,NULL,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (19038,793,1,2,3,'2017-01-00',NULL,1,'2017-08-31 17:12:47',1,'2017-08-31 17:12:47','1 drop(s)',NULL,NULL,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (19038,NULL,NULL,NULL,NULL,'2017-00-00',NULL,1,'2017-08-31 17:13:04',1,'2017-08-31 17:13:04',NULL,NULL,2,0);
INSERT INTO `archive_medication` (`patient_id`,`drug_id`,`route_id`,`option_id`,`frequency_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`dose`,`stop_reason_id`,`medication_drug_id`,`prescription_item_id`) VALUES (19038,NULL,10,NULL,NULL,'2017-08-31',NULL,1,'2017-08-31 17:13:24',1,'2017-08-31 17:13:24',NULL,NULL,657,0);
