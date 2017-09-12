use openeyes;

CREATE TEMPORARY TABLE IF NOT EXISTS temp_users(`username` varchar(50), registration_code varchar(50));

INSERT INTO temp_users (username, registration_code) VALUES ('morganm', 'GMC12345');
INSERT INTO temp_users (username, registration_code) VALUES ('templar', 'GMC23456');
INSERT INTO temp_users (username, registration_code) VALUES ('williamss', 'GMC34567');
INSERT INTO temp_users (username, registration_code) VALUES ('jonesg', 'GMC45678');
INSERT INTO temp_users (username, registration_code) VALUES ('hamiltonr', 'GMC56789');
INSERT INTO temp_users (username, registration_code) VALUES ('jacobsp', 'GMC67890');

UPDATE user u INNER JOIN temp_users t ON u.username = t.username SET u.registration_code = t.registration_code;


DROP TABLE temp_users;
