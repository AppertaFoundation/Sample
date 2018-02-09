

INSERT INTO `event` (`episode_id`,`created_user_id`,`event_type_id`,`last_modified_user_id`,`last_modified_date`,`created_date`,`event_date`,`info`,`deleted`,`delete_reason`,`delete_pending`,`is_automated`,`automated_source`,`parent_id`,`sub_type`) VALUES (70,1,38,1,'2016-07-26 16:13:46','2016-07-26 16:13:46','2016-07-26 00:00:00','unread',0,NULL,0,NULL,NULL,NULL,NULL);
SET @ev1=LAST_INSERT_ID();


INSERT INTO `et_ophcomessaging_message` (`id`,`event_id`,`for_the_attention_of_user_id`,`message_type_id`,`urgent`,`message_text`,`last_modified_user_id`,`last_modified_date`,`created_user_id`,`created_date`,`deleted`,`marked_as_read`) VALUES (1,@ev1,6006,2,0,'Showing signs of progression. Could you please review thx.',1,'2016-07-26 16:13:46',1,'2016-07-26 16:13:46',0,0);
