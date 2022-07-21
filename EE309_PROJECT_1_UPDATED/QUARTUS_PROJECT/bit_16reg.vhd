library ieee;
use ieee.std_logic_1164.all;

entity register_16 is
	port (d : IN STD_LOGIC_VECTOR(15 downto 0);
				wrt : IN STD_LOGIC;
				clr : IN STD_LOGIC;
				clk : IN STD_LOGIC;
				q : OUT STD_LOGIC_VECTOR(15 downto 0));
end register_16;


architecture r_16 of register_16 is
		begin
			process (clk, clr)
			begin
				if clr = '1' then
					q <= "0000000000000000";
				elsif rising_edge(clk) then
					if wrt = '1' then
						q <= d;
					end if;
					end if;
			end process;
end r_16;