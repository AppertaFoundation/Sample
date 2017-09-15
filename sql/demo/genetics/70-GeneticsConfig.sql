use openeyes;

/***********************
* Create Genetics users
************************/

-- Create temp list of all created users (used later in this script)
CREATE TEMPORARY TABLE IF NOT EXISTS temp_users(`id` int);

-- Add contacts
INSERT INTO `contact` (`primary_phone`, `title`, `first_name`, `last_name`) VALUES ('01234567890', 'Mr', 'Genetics', 'Clinical');
SET @GenclCnt = LAST_INSERT_ID();
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Administrator');
SET @GenadCnt = LAST_INSERT_ID();
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'Lab Tech');
SET @GenlabCnt = LAST_INSERT_ID();
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('Mr', 'Genetics', 'User');
SET @GenUsCnt = LAST_INSERT_ID();

-- Create Users
INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`, `last_firm_id`)
SELECT 'geneticsclinical', 'Genetics', 'Clinical', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', @GenclCnt, '297';
SET @GenclUsr = LAST_INSERT_ID();
INSERT INTO temp_users (`id`) VALUES (@GenclUsr);

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`, `last_firm_id`)
SELECT 'geneticsadmin', 'Genetics', 'Administrator', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', @GenadCnt, '297';
SET @GenadUsr = LAST_INSERT_ID();
INSERT INTO temp_users (`id`) VALUES (@GenadUsr);

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`, `last_firm_id`)
SELECT 'geneticstech', 'Genetics', 'Lab Tech', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', @GenlabCnt, '297';
SET @GenlabUsr = LAST_INSERT_ID();
INSERT INTO temp_users (`id`) VALUES (@GenlabUsr);

INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`, `last_firm_id`)
SELECT 'geneticsuser', 'Genetics', 'User', '1', '1', '', 'b0c6e884403a5c05bd634943df1b9a08', '7jMG6UQ2dY', '1', @GenUsCnt, '297';
SET @GenUsUsr = LAST_INSERT_ID();
INSERT INTO temp_users (`id`) VALUES (@GenUsUsr);

-- Set permissions
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Clinical', @GenclUsr;
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Admin', @GenadUsr;
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics Laboratory Technician', @GenlabUsr;
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT'Genetics User', @GenUsUsr;

-- Set basic login permissions for all new users
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'User', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'View clinical', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;
INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'Edit', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;

DROP TABLE temp_users;


-- Create study
INSERT INTO `genetics_study` (`name`, `criteria`) VALUES ('Demo Study', 'Anybody can join this study. It is for demonstration purposes only');
INSERT INTO `genetics_study_proposer` (`study_id`, `user_id`) SELECT 1, (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='User');
INSERT INTO `genetics_study_proposer` (`study_id`, `user_id`) SELECT 1, (SELECT id FROM user WHERE first_name = 'Genetics' AND last_name='Clinical');

-- Amino Acido C type
INSERT INTO `pedigree_amino_acid_change_type` (`change`) VALUES ('Demo Amino Acid Change Type');

-- Base Change Type
INSERT INTO `pedigree_base_change_type` (`change`) VALUES ('Demo Base Change Type');

-- Gene
INSERT INTO `pedigree_gene` (`name`, `location`, `description`, `details`) VALUES ('Demo Gene', '23', 'Gene placeholder for demonstration', 'Demonstraition');

-- Pedigree/family
INSERT INTO `pedigree` (`id`,`inheritance_id`,`comments`,`consanguinity`,`gene_id`,`base_change`,`amino_acid_change`,`disorder_id`,`last_modified_date`,`last_modified_user_id`,`created_user_id`,`created_date`,`base_change_id`,`amino_acid_change_id`,`genomic_coordinate`,`genome_version`,`gene_transcript`) VALUES (1,1,'This is a demonstration pedegree',0,1,'','',NULL,'2017-06-21 17:05:53',1,1,'2017-06-21 17:05:53',1,1,'',37,'');
