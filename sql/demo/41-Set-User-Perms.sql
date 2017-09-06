use openeyes;

-- -- REMOVE some roles from all users first_name
-- DELETE FROM authassignment WHERE itemname in ('Schedule operation', 'Super schedule operation');

-- Add all user roles to admin user
INSERT INTO authassignment (itemname, userid) SELECT name, 1 FROM openeyes.authitem where type=2 AND name not in (SELECT itemname from authassignment where userid=1) AND name != 'API access';


-- Create temp list of all created users (used later in this script)
-- CREATE TEMPORARY TABLE IF NOT EXISTS temp_users(`id` int);

-- Add contacts for new users
INSERT INTO `contact` (`title`, `first_name`, `last_name`) VALUES ('System', 'Portal', 'User');
SET @portal_contact = LAST_INSERT_ID();

-- Create new users
INSERT INTO `user` (`username`, `first_name`, `last_name`, `active`, `global_firm_rights`, `role`, `password`, `salt`, `is_clinical`, `contact_id`)
SELECT 'portal_user', 'System', 'Optom Portal Account', '1', '1', '', 'x0c6e884403a5c05bd632943df1b9a08', '5jMG5UQ2dY', '1', @portal_contact;
-- SET @portal_user = LAST_INSERT_ID();
-- INSERT INTO temp_users (`id`) VALUES (@portal_user);
--
-- -- Set permissions for users
-- INSERT INTO `openeyes`.`authassignment` (`itemname`, `userid`) SELECT 'Clerical CVI', @CVIclUsr;
--
-- -- Set basic login permissions for all new users
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'User', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'View clinical', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;
-- INSERT INTO `authassignment` (`itemname`, `userid`) SELECT 'Edit', u.id FROM user u INNER JOIN temp_users t WHERE u.id = t.id;
--
-- DROP TABLE temp_users;

UPDATE user set last_firm_id = 297;
