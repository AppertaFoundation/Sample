/***********************************************************************
* OpenEyes Demo Loader file
************************************************************************
* This sets up some sample workflows
************************************************************************/
use openeyes;

/* Workflow - Default*/
INSERT INTO `ophciexamination_element_set_item` (`set_id`,`element_type_id`,`is_hidden`,`is_mandatory`) VALUES
(
    (SELECT id FROM ophciexamination_element_set WHERE `name` = 'Default' AND workflow_id =
        (SELECT id FROM ophciexamination_workflow WHERE `name` = 'Default')),
    (SELECT id FROM element_type WHERE `name` = 'Medications' AND event_type_id = (SELECT id from event_type WHERE `name` = 'Examination')),
    0,
    0
);

/* Workflow - 1 Stop Cataract */

INSERT INTO `ophciexamination_element_set_item` (`set_id`,`element_type_id`,`is_hidden`,`is_mandatory`) VALUES
(
    (SELECT id FROM ophciexamination_element_set WHERE `name` = 'Nurse' AND workflow_id =
        (SELECT id FROM ophciexamination_workflow WHERE `name` = '1 Stop Cataract')),
    (SELECT id FROM element_type WHERE `name` = 'Medications' AND event_type_id = (SELECT id from event_type WHERE `name` = 'Examination')),
    0,
    0
);


/* Workflow - Pre-Assessment */

INSERT INTO `ophciexamination_element_set_item` (`set_id`,`element_type_id`,`is_hidden`,`is_mandatory`) VALUES
(
    (SELECT id FROM ophciexamination_element_set WHERE `name` = 'Step 1' AND workflow_id =
        (SELECT id FROM ophciexamination_workflow WHERE `name` = 'Pre-Assessment')),
    (SELECT id FROM element_type WHERE `name` = 'Medications' AND event_type_id = (SELECT id from event_type WHERE `name` = 'Examination')),
    0,
    0
);


/* Workflow - MR Default */

INSERT INTO `ophciexamination_element_set_item` (`set_id`,`element_type_id`,`is_hidden`,`is_mandatory`) VALUES
(
    (SELECT id FROM ophciexamination_element_set WHERE `name` = 'Nurse' AND workflow_id =
        (SELECT id FROM ophciexamination_workflow WHERE `name` = 'MR Default')),
    (SELECT id FROM element_type WHERE `name` = 'Medications' AND event_type_id = (SELECT id from event_type WHERE `name` = 'Examination')),
    0,
    0
);
