library ieee;
use ieee.std_logic_1164.all;

entity lsi is
	port ( 
				lsi_in : IN STD_LOGIC_VECTOR(15 downto 0);
				lsi_out : OUT STD_LOGIC_VECTOR(15 downto 0));
end lsi ;


architecture arch of lsi is

begin 

lsi_out(15 downto 1) <= lsi_in(14 downto 0);
lsi_out(0) <= lsi_in(15);
end arch ;