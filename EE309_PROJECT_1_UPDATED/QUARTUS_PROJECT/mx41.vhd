library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
port(three,two,one,zero:in std_logic_vector(15 downto 0);
     output:out std_logic_vector(15 downto 0); 
     sel:in std_logic_vector(1 downto 0));
end entity;

architecture d_mux4to1 of mux4to1 is
begin
	
process(zero,one,sel,three,two)
variable mux41_temporary: std_logic_vector(15 downto 0); 
begin

case sel is 
	when "00" =>
        mux41_temporary:=zero;
    when "01" =>
        mux41_temporary:=one;
    when "10" =>
        mux41_temporary:=two;
    when "11" =>
        mux41_temporary:=three;
    when others =>
        mux41_temporary:="XXXXXXXXXXXXXXXX";
end case;

output<= mux41_temporary;

end process;

end;