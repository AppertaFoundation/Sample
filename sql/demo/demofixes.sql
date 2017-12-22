use openeyes;
TRUNCATE TABLE ophtroperationbooking_waiting_list_contact_rule;
TRUNCATE TABLE `ophcocorrespondence_firm_site_secretary`;

TRUNCATE TABLE ophcotherapya_email_recipient;
INSERT INTO ophcotherapya_email_recipient (id, site_id, recipient_name, recipient_email, type_id, display_order)
VALUES (1, 1, 'AMD Group', 'amdgroup@example.openeyes.org', 1, 1);
INSERT INTO ophcotherapya_email_recipient (id, site_id, recipient_name, recipient_email, type_id, display_order)
VALUES (2, 1, 'AMD Group', 'amdgroup@example.openeyes.org', 2, 2);

UPDATE firm SET consultant_id = NULL WHERE `name` = 'Cataract Service';
UPDATE firm SET pas_code = NULL, `name` = 'Medical Retinal Service', consultant_id = NULL, can_own_an_episode = 1, runtime_selectable = 0 WHERE id = 1;
UPDATE episode SET firm_id = 1 WHERE firm_id = 9;
UPDATE `ophtroperationbooking_operation_sequence` SET firm_id = 1 WHERE firm_id = 9;
UPDATE `ophtroperationbooking_operation_session` SET firm_id = 1 WHERE firm_id = 9;
UPDATE `et_ophcotherapya_mrservicein` SET consultant_id = 1 WHERE consultant_id = 9;

DELETE FROM firm where id = 9;

TRUNCATE TABLE user_session;

UPDATE ophinbiometry_calculation_formula SET last_modified_user_id = 1, created_user_id = 1;
UPDATE ophinbiometry_lenstype_lens SET last_modified_user_id = 1, created_user_id = 1;