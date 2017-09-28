/***** This file contains fixes that should be merged into the sample data before release *****/
UPDATE `openeyes`.`setting_metadata` SET `name`='Disable copy for notes in correspondence' WHERE `id`='50';

delete from ophtroperationbooking_operation_erod_rule_item;
delete from ophtroperationbooking_operation_erod_rule;
