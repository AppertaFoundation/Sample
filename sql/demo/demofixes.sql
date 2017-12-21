use openeyes;
TRUNCATE TABLE ophtroperationbooking_waiting_list_contact_rule;
TRUNCATE TABLE `ophcocorrespondence_firm_site_secretary`;

TRUNCATE TABLE ophcotherapya_email_recipient;
INSERT INTO ophcotherapya_email_recipient (id, site_id, recipient_name, recipient_email, type_id, display_order)
VALUES (1, 1, 'AMD Group', 'amdgroup@example.openeyes.org', 1, 1);
INSERT INTO ophcotherapya_email_recipient (id, site_id, recipient_name, recipient_email, type_id, display_order)
VALUES (2, 1, 'AMD Group', 'amdgroup@example.openeyes.org', 2, 2);