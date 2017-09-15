use openeyes;

UPDATE `openeyes`.`event` SET `episode_id`=(SELECT id FROM episode WHERE patient_id = 19573 AND firm_id = 5), `event_date`='2017-08-04 10:15:44' WHERE `id`='3686313';
UPDATE `openeyes`.`ophinbiometry_imported_events` SET `is_linked`='1' WHERE `id`='20';
