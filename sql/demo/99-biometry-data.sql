use openeyes;

UPDATE `ophinbiometry_imported_events` SET `is_linked`='1' WHERE `id`='33';

UPDATE event SET episode_id = (SELECT id FROM episode WHERE patient_id = 19573 AND firm_id = 5) WHERE id = 3686313;
