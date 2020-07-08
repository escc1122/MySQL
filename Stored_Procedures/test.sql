CREATE DEFINER=`root`@`%` PROCEDURE `al_test`()
BEGIN
    DECLARE v_days int;
    DECLARE finished INTEGER DEFAULT 0;
    DECLARE v_test1 int;
    DECLARE v_test2 VARCHAR(1000);
    DECLARE v_test3 VARCHAR(1000);
	DECLARE gameinfo CURSOR FOR SELECT test1,test2,test3 FROM xxxxxxxxxxxxxx;   
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
	OPEN gameinfo;
    	getEmail: LOOP
			FETCH gameinfo INTO v_test1,v_test2,v_test3;
				IF finished = 1 THEN 
					LEAVE getEmail;
				END IF;
			select v_test1,v_test2,v_test3 AS '** DEBUG:';
		END LOOP getEmail;
	CLOSE gameinfo;
END
