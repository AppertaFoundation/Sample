/***** This file contains fixes that should be merged into the sample data before release *****/
UPDATE `openeyes`.`setting_metadata` SET `name`='Disable copy for notes in correspondence' WHERE `id`='50';

delete from ophtroperationbooking_operation_erod_rule_item;
delete from ophtroperationbooking_operation_erod_rule;

-- fix issue with emergency diary, which is looking for AE
UPDATE `openeyes`.`subspecialty` SET `ref_spec`='AE' WHERE `id`='1';

--fix wards for booking
UPDATE `openeyes`.`ophtroperationbooking_operation_theatre` SET `ward_id`='1' WHERE `id`='1';
UPDATE `openeyes`.`ophtroperationbooking_operation_theatre` SET `ward_id`='6' WHERE `id`='2';
UPDATE `openeyes`.`ophtroperationbooking_operation_theatre` SET `ward_id`='4' WHERE `id`='3';
UPDATE `openeyes`.`ophtroperationbooking_operation_theatre` SET `ward_id`='6' WHERE `id`='4';
