library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity FourBitFreqDiv is
port( CLK, G, CLR : in std_logic;
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic);
end FourBitFreqDiv;

architecture arc of FourBitFreqDiv is
signal count: unsigned(20 downto 0);
begin
process (CLK, CLR, G)
begin
if (CLR = '1') then count <= "000000000000000000000";
--positive triggering
elsif (CLK' event and CLK = '1') then
if(G = '1') then count<=count +1;
end if;
end if;
end process;
Q0 <= count(13);
Q1 <= count(14);
Q2 <= count(15);
Q3 <= count(16);
Q4 <= count(17);
Q5 <= count(18);
Q6 <= count(19);
Q7 <= count(20);
end arc;