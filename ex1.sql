/*
1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/

DELIMITER $$ -- //


CREATE PROCEDURE hello (num INT)
BEGIN
	DECLARE res VARCHAR(200) DEFAULT '';
	DECLARE i Int DEFAULT 0;	
	set i = num div 86400;
	set res = concat (i,' days ');
	set num = num % 86400;
  set i = num div 3600;
	set res = concat (res, i,' hours');	
  set num = num % 3600;	
	select num;
	
END $$ -- //
DELIMITER ;


call hello(123456);

