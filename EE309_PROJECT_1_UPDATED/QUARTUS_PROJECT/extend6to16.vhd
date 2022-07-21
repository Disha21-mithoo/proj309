library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extend6to16 is
	port (input : IN STD_LOGIC_VECTOR(5 downto 0);
         output : OUT STD_LOGIC_VECTOR(15 downto 0));
end extend6to16;


architecture ex_6to16 of extend6to16 is
		begin
			process (input)
			begin
				output <= std_logic_vector(resize(signed(input), 16));
			end process;
end ex_6to16;