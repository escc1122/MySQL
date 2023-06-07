CREATE TABLE `sort_test` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `code` varchar(50) NOT NULL,
	  `presentation_type` tinyint(4) NOT NULL DEFAULT '0',
	  `sort` tinyint(4) NOT NULL DEFAULT '0',
	  `game_id` varchar(45) NOT NULL,
	  `create_time` datetime(6) NOT NULL,
	  PRIMARY KEY (`id`)
);



SET @temp_sort:=0;
UPDATE `sort_test` AS old_data,(
	SELECT id,@temp_sort:= @temp_sort + 1 as new_sort FROM sort_test ORDER BY `sort` desc, `create_time` desc
) as new_data
SET old_data.sort = new_data.new_sort
WHERE old_data.id = new_data.id AND presentation_type = 4;
