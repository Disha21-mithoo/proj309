--MUX 2 TO 1 , ONE SELECT

library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
port(zero,one:in std_logic_vector(15 downto 0);
     output:out std_logic_vector(15 downto 0); 
     sel:in std_logic);
end entity;

architecture d_mux2to1 of mux2to1 is


begin
	
process(zero,one,sel)
variable temporary: std_logic_vector(15 downto 0); 
begin

case sel is 
	when '0' =>
        temporary:=zero;
    when '1' =>
        temporary:=one;
    when others =>
        temporary:="XXXXXXXXXXXXXXXX";
end case;

output <= temporary ;

end process;

end;