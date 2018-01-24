-- This script will assign ALL roles to the admin user (user id 1)

use openeyes;
INSERT IGNORE INTO authassignment (userid, itemname)
SELECT 1, name from authitem where type = 2;
