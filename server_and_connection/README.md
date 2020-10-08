    # 資料庫串聯
    
    CREATE SERVER al_game_api_server_test
    FOREIGN DATA WRAPPER mysql
    OPTIONS (USER 'root', HOST '127.0.0.1',PASSWORD '34634645654645' ,PORT 3306, DATABASE 'test');
    
    
    CREATE TABLE `dsgfdfgfd` (
      `id` bigint(20) NOT NULL AUTO_INCREMENT,
      `ggggg` bigint(20) DEFAULT NULL COMMENT 'test',
      PRIMARY KEY (`id`),
      UNIQUE KEY `index_agent` (`ggggg`) USING BTREE
    ) ENGINE=FEDERATED DEFAULT CHARSET=utf8mb4 CONNECTION = 'al_game_api_server_test/dsgfdfgfd';
    
    
    
    
    

# 參考
https://dev.mysql.com/doc/refman/8.0/en/create-server.html
    
    
    
    
    
    
