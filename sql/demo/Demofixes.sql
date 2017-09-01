/******
* This script is used to add quick fixups to the sample data.
* In thime these should be absorbed into the sample database
* and can be removed from this file
*******/

-- Move theatre 2 to site 4
UPDATE `openeyes`.`ophtroperationbooking_operation_theatre` SET `site_id`='4' WHERE `id`='2';

-- choose a lens for charles darwin
UPDATE `openeyes`.`et_ophinbiometry_selection` SET `iol_power_right`='25.50', `predicted_refraction_right`='-0.17', `lens_id_right`='5', `formula_id_left`='0', `formula_id_right`='1' WHERE `id`='26';
