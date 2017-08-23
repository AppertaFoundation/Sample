/*
-- Query: SELECT * FROM openeyes.episode where id > 600872
*/
INSERT INTO `episode` (`id`,`patient_id`,`firm_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`episode_status_id`,`legacy`,`deleted`,`eye_id`,`disorder_id`,`support_services`,`change_tracker`) VALUES (600873,19061,12,'2017-07-25 16:39:57',NULL,1,'2017-07-25 16:39:57',1,'2017-07-25 16:39:57',1,0,0,NULL,NULL,0,NULL);
INSERT INTO `episode` (`id`,`patient_id`,`firm_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`episode_status_id`,`legacy`,`deleted`,`eye_id`,`disorder_id`,`support_services`,`change_tracker`) VALUES (600874,19573,5,'2017-07-25 16:42:10',NULL,1,'2017-07-25 16:42:10',1,'2017-07-25 16:42:10',1,0,0,NULL,NULL,0,NULL);
INSERT INTO `episode` (`id`,`patient_id`,`firm_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`episode_status_id`,`legacy`,`deleted`,`eye_id`,`disorder_id`,`support_services`,`change_tracker`) VALUES (600875,19372,5,'2017-07-25 16:45:42',NULL,1,'2017-07-25 16:45:42',1,'2017-07-25 16:45:42',1,0,0,NULL,NULL,0,NULL);
INSERT INTO `episode` (`id`,`patient_id`,`firm_id`,`start_date`,`end_date`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`episode_status_id`,`legacy`,`deleted`,`eye_id`,`disorder_id`,`support_services`,`change_tracker`) VALUES (600876,19038,8,'2017-07-25 16:47:15',NULL,1,'2017-07-25 16:47:15',1,'2017-07-25 16:47:15',1,0,0,NULL,NULL,0,NULL);


/*
-- Query: SELECT * FROM openeyes.event where event_type_id = 42
*/
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686375,600873,1,40,1,'2017-07-25 15:56:59','2017-07-25 15:56:59','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686376,600874,1,40,1,'2017-07-25 15:57:50','2017-07-25 15:57:50','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686377,600875,1,40,1,'2017-07-25 15:59:16','2017-07-25 15:58:58','2017-07-12 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686378,67,1,40,1,'2017-07-25 16:02:25','2017-07-25 16:02:25','2000-04-06 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686379,116302,1,40,1,'2017-07-25 16:04:45','2017-07-25 16:03:38','2017-07-25 16:03:38','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686380,600876,1,40,1,'2017-07-25 16:08:36','2017-07-25 16:08:36','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686382,180628,1,40,1,'2017-07-25 16:10:58','2017-07-25 16:10:58','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686383,67,1,40,1,'2017-07-25 16:17:40','2017-07-25 16:17:40','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686384,358954,1,40,1,'2017-07-25 16:19:00','2017-07-25 16:19:00','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);
INSERT INTO `event` (`id`,`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`) VALUES (3686385,44762,1,40,1,'2017-07-25 16:20:10','2017-07-25 16:20:10','2017-07-25 00:00:00','',0,NULL,0,NULL,NULL,NULL);


/*
-- Query: SELECT * FROM openeyes.protected_file
*/
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (17,'d9ec65673fca9898c34ebacadd9a8f476a8c541d','PaedsRef1x.pdf','','','application/pdf','152335',1,'2017-07-25 15:56:31',1,'2017-07-25 15:56:31');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (18,'64edb9c5c5548794a744fa0125484b26bdf0f889','CatRef1x.pdf','','','application/pdf','71207',1,'2017-07-25 15:57:44',1,'2017-07-25 15:57:44');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (19,'089781d0e77e854c8f3dd7f0bda7b3f9542f14e4','Cataract Referral.pdf','','','application/pdf','218086',1,'2017-07-25 15:58:55',1,'2017-07-25 15:58:55');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (20,'56d74c7087f319aebcdd12a2762782b177255fb5','GlauRef1.pdf','','','application/pdf','569266',1,'2017-07-25 16:01:35',1,'2017-07-25 16:01:35');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (21,'dc9a6509052683a0ba19d0b5a47597ec4c160ade','GlauRef2.pdf','','','application/pdf','270183',1,'2017-07-25 16:03:22',1,'2017-07-25 16:03:22');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (22,'95dec8fd8834d58cf14f5629c5000dc72d42d02e','GlauRef3x.pdf','','','application/pdf','181333',1,'2017-07-25 16:08:18',1,'2017-07-25 16:08:18');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (26,'ecbf958f64c4272f90e15e98047ba0e47de2f44b','MROCT1.jpg','','','image/jpeg','20419',1,'2017-07-25 16:10:53',1,'2017-07-25 16:10:53');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (27,'276ce13eb90f5281a19592ee9002714b3028c53d','OCT-DMO.jpg','','','image/jpeg','17680',1,'2017-07-25 16:10:55',1,'2017-07-25 16:10:55');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (28,'0a6e9738484c08800bb02151bc46bebeb68822a6','GA.jpg','','','image/jpeg','47512',1,'2017-07-25 16:17:38',1,'2017-07-25 16:17:38');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (29,'cdbb43d3907011a5bb66b7b10b89a6f0f9addf3a','OCT-RetinalDetachment.jpg','','','image/jpeg','138169',1,'2017-07-25 16:18:22',1,'2017-07-25 16:18:22');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (30,'bf5dbfaa9a4d22002d6f0bdc419feaca30645d79','OCT-RetinalDetachment.jpg','','','image/jpeg','138169',1,'2017-07-25 16:18:43',1,'2017-07-25 16:18:43');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (31,'4c19be016800182eb379ed9ec59dfb84e0aa1185','macular-edema-oct-dr-rvo.png','','','image/png','506918',1,'2017-07-25 16:18:45',1,'2017-07-25 16:18:45');
INSERT INTO `protected_file` (`id`,`uid`,`name`,`title`,`description`,`mimetype`,`size`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`) VALUES (32,'b6ecf2135a709809c87fe8b0038920f28ca24af0','fluoresentfundus.jpg','','','image/jpeg','49859',1,'2017-07-25 16:20:05',1,'2017-07-25 16:20:05');


/*
-- Query: SELECT * FROM openeyes.et_ophcodocument_document
-- Date: 2017-07-25 16:28
*/
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (1,3686375,17,1,'2017-07-25 15:56:59',1,'2017-07-25 15:56:59',NULL,NULL,3);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (2,3686376,18,1,'2017-07-25 15:57:50',1,'2017-07-25 15:57:50',NULL,NULL,3);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (3,3686377,19,1,'2017-07-25 15:59:16',1,'2017-07-25 15:58:58',NULL,NULL,3);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (4,3686378,20,1,'2017-07-25 16:02:25',1,'2017-07-25 16:02:25',NULL,NULL,3);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (5,3686379,21,1,'2017-07-25 16:04:45',1,'2017-07-25 16:03:38',NULL,NULL,3);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (6,3686380,22,1,'2017-07-25 16:08:36',1,'2017-07-25 16:08:36',NULL,NULL,1);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (8,3686382,NULL,1,'2017-07-25 16:10:58',1,'2017-07-25 16:10:58',27,26,4);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (9,3686383,28,1,'2017-07-25 16:17:40',1,'2017-07-25 16:17:40',NULL,NULL,6);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (10,3686384,NULL,1,'2017-07-25 16:19:00',1,'2017-07-25 16:19:00',31,30,4);
INSERT INTO `et_ophcodocument_document` (`id`,`event_id`,`single_document_id`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`left_document_id`,`right_document_id`,`event_sub_type`) VALUES (11,3686385,32,1,'2017-07-25 16:20:10',1,'2017-07-25 16:20:10',NULL,NULL,6);
