use openeyes;
UPDATE patient SET gp_id=1 WHERE gp_id IS NULL;
UPDATE patient SET practice_id=1 WHERE practice_id IS NULL;
