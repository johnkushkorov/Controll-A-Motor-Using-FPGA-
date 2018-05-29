--64 steps or 5.625 degrees per step
LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
  ENTITY KhanJohnFinal IS 
  PORT (clk, dir: IN STD_LOGIC;
      Q, gpio : OUT STD_LOGIC_VECTOR (3 downto 0));
      END KhanJohnFinal; 
ARCHITECTURE arc of KhanJohnFinal IS
   TYPE state_machine IS (S0, S1, S2, S3);--user defined type
   SIGNAL state: state_machine; --(internal signal, wire) 
BEGIN
PROCESS(clk)
BEGIN
IF (clk'EVENT and clk ='1') THEN
IF dir ='1' THEN
CASE state IS
WHEN S0 => state <= S1; --state increment
WHEN S1 => state <= S2;
WHEN S2 => state <= S3;
WHEN S3 => state <= S0;
END CASE;
ELSE
CASE state IS
WHEN S0 => state <= S3; --state decrement
WHEN S3 => state <= S2;
WHEN S2 => state <= S1;
WHEN S1 => state <= S0;
END CASE;
END IF;
END IF;
END PROCESS;
WITH state SELECT
Q <= "0001" WHEN S0,
"0010" WHEN S1,
"0100" WHEN S2,
"1000" WHEN S3;
WITH state SELECT
gpio <= "0001" WHEN S0,
"0010" WHEN S1,
"0100" WHEN S2,
"1000" WHEN S3;
END arc;