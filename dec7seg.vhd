LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec7seg IS
PORT ( dec : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	HEX0 : out std_logic_vector(0 to 6));
	END dec7seg;
	
	ARCHITECTURE Behavior OF dec7seg IS
	BEGIN
	PROCESS(dec)
	BEGIN 
		CASE dec IS
		when "000" => HEX0 <= "1000000";--0
when "001" => HEX0 <= "1111001" ;--1
when "010" => HEX0 <= "0100100";--2
when "011" => HEX0 <= "0110000"  ;--3
when "100" => HEX0 <= "0011001" ;--4
when "101" => HEX0 <= "0010010"  ;--5
when "110" => HEX0 <= "0000010" ;--6
when "111" => HEX0 <= "1111000"  ;--7
	END CASE;
	END PROCESS;
	END Behavior;