library ieee;
use ieee.std_logic_1164.all;

entity framework is
    port (
  f0: in std_logic;
  f1: in std_logic;
  z: in std_logic;
  a: in std_logic_vector(1 downto 0);
  b: in std_logic_vector(1 downto 0);
  c: in std_logic;
  d: in std_logic_vector(1 downto 0);
  e: in std_logic_vector(1 downto 0);
  i: in std_logic;
  r: in std_logic;
  t: in std_logic_vector(4 downto 0);
  alu_inv: in std_logic;
        
  final_out : out std_logic_vector(1 downto 0));
end framework;


architecture a1 of framework is

SIGNAL 	Y :  std_logic ;
SIGNAL 	u :  std_logic ;
SIGNAL 	s1 :  std_logic_vector(1 downto 0) ;
SIGNAL 	s2 :  std_logic_vector(1 downto 0) ;
SIGNAL 	s3 :  std_logic_vector(1 downto 0) ;
SIGNAL 	s4 :  std_logic_vector(1 downto 0) ; 
SIGNAL 	s5 :  std_logic_vector(1 downto 0);
			
begin
BITm : process(A)
begin
  Y <= ((f1 xnor f0) or (z and (not f1)) or (c and f1));
  u <= ((not t(4))and(not t(3))and(not t(2))and t(1) and t(0));

  if(Y = '1') then
    s1 <= a;
    s2 <= d;
  else
    s1 <= b;
    s2 <= e;
  end if;

  if(i = '1') then
    s3 <= s1;
  else
    s3 <= s2;
  end if;

  if(r = '1') then
    s4 <= "10" ;
  else
    s4 <= s3;
  end if;


  if(u = '1') then
    s5 <= s4;
  else
    s5 <= "01" ;
  end if;

  if(alu_inv = '1') then
   final_out <= s5;
  else
    final_out <= "00" ;
  end if; 

  end process;
end a1;