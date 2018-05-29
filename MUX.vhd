LIBRARY IEEE;
use ieee.std_logic_1164.all;
ENTITY MUX IS
PORT ( S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
A,B,C,D,E,F,G,H : IN STD_LOGIC; -- switches
M : OUT STD_LOGIC);
END MUX;
ARCHITECTURE Behavior OF MUX IS
BEGIN
process (S) --use case statement
begin
case S is
when "000" => M <= A;
when "001" => M <= B;
when "010" => M <= C;
when "011" => M <= D;
when "100" => M <= E;
when "101" => M <= F;
when "110" => M <= G;
when "111" => M <= H;
end case;
end process;
END Behavior;