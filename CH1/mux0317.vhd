LIBRARY IEEE;  --库、程序包的说明调用
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MUX0317 IS  --实体声明

PORT(a,b: IN STD_LOGIC; 
		 s: IN STD_LOGIC;
		 y: OUT STD_LOGIC);
		 
END ENTITY MUX0317;

ARCHITECTURE ONE OF MUX0317 IS BEGIN --结构体定义
	PROCESS (a, b, s) BEGIN 
		IF s='0' THEN 
			y<= a;
		ELSE
			y<=b;
		END IF;
	END PROCESS;

END ARCHITECTURE ONE;