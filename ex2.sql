/*
2. Выведите только чётные числа от 1 до 10.
Пример: 2,4,6,8,10*/

DELIMITER $$ 

CREATE PROCEDURE outnum(num INT)
BEGIN
	DECLARE res VARCHAR(200) DEFAULT '';
	DECLARE i Int DEFAULT 2;
  
	REPEAT
	set res = concat (res,' ', i );
	set i = i + 2;
	until i > num
	END REPEAT;	
	
	select res;
	
END $$ 
DELIMITER ;


call outnum(20);
