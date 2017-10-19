use openeyes;




-- first, set all existing common drugs to Kings site (currently they are on queens)
UPDATE site_subspecialty_drug
SET site_id = 1;

-- Remove Citalopram
DELETE FROM site_subspecialty_drug WHERE drug_id = 207;

-- insert Additional base drugs for site 1

-- Copy base drugs to ALL subspecialties for site 1
INSERT INTO site_subspecialty_drug (site_id, subspecialty_id, drug_id)
SELECT site_id as `site_id`, s.id as `subspecialy_id`,  sd.drug_id
FROM site_subspecialty_drug sd
	JOIN subspecialty s
WHERE s.id <> 4;


CREATE TEMPORARY TABLE IF NOT EXISTS temp_drugs (
    subspecialty_id integer,
    drug_id integer
);
-- insert glaucoma drugs for site 1
INSERT INTO temp_drugs (subspecialty_id, drug_id)
SELECT (SELECT id from subspecialty where `name` = 'Glaucoma'), d.id
FROM drug d
WHERE `name` in ('Brinzolamide 1% with timolol 0.5% eye drops',
    'Brimonidine 0.2% with timolol 0.5% eye drops',
    'Dorzolamide 2% with timolol 0.5% eye drops',
    'Dorzolamide 2% with timolol 0.5% single use eye drops',
    'Travoprost 0.04% with timolol 0.5% eye drops',
    'Bimatoprost 0.03% with timolol 0.5% eye drops',
    'Timolol 0.1% single use eye gel',
    'Timolol 0.1% eye gel',
    'Timolol 0.25% eye drops',
    'Timolol 0.5% eye drops',
    'Timolol 0.5% eye gel (Timoptol-LA)',
    'Timolol 0.25% single use eye drops',
    'Timolol 0.5% single use eye drops',
    'Latanoprost 0.005% with timolol 0.5% eye drops',
    'Latanoprost 0.005% eye drops'
    );



-- add new subspecialty drugs from temp_drugs
INSERT INTO site_subspecialty_drug (site_id, subspecialty_id, drug_id) SELECT 1, subspecialty_id, drug_id FROM temp_drugs;

-- copy all drugs to every site
INSERT INTO site_subspecialty_drug (site_id, subspecialty_id, drug_id) SELECT site.id, sd.subspecialty_id, sd.drug_id FROM site_subspecialty_drug sd join site WHERE sd.site_id = 1 and site.id != 1;


DROP TABLE temp_drugs;
