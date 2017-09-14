/******
* This script is used to add quick fixups to the sample data.
* In thime these should be absorbed into the sample database
* and can be removed from this file
*******/
UPDATE element_type set name = 'Previous Ophthalmic History' where class_name = 'OEModule\\OphCiExamination\\models\\PastSurgery';
UPDATE subspecialty set ref_spec = 'EC' WHERE ref_spec = 'AE';
