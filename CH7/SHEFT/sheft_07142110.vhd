library ieee;
use ieee.std_logic_1164.all;

entity sheft_07142110 is 
	port(M,CO,CLK: in std_logic;
		S:in std_logic_vector(1 downto 0);
		D:in std_logic_vector(7 downto 0);
		Q:out std_logic_vector(7 downto 0);
		CY:out std_logic);
end sheft_07142110;

architecture arc of sheft_07142110 is
	signal b: std_logic_vector(2 downto 0); 
begin
	b<=S&M;
	process(CLK,S)
		variable reg:std_logic_vector(7 downto 0);
     	variable e,g:std_logic;
		begin
			if CLK 'event and CLK='1' then
				case b is
					when "000" => reg:=reg; g:=g;
					when "001" => reg:=reg; g:=g;
					when "010" => e:=reg(7); 
								  reg(7 downto 1):=reg(6 downto 0); 
								  reg(0):=e; g:='0';
					when "011" => g:=reg(7); 
						    	  reg(7 downto 1):=reg(6 downto 0); 
								  reg(0):=CO;
					when "100" => e:=reg(0);
								  reg(6 downto 0):=reg(7 downto 1);
								  reg(7):=e; g:='0';
					when "101" => g:=reg(0);
								  reg(6 downto 0):=reg(7 downto 1);
								  reg(7):=CO;
					when "110" => reg(7 downto 0):=D(7 downto 0);
					              g:='0';
					when "111" => reg(7 downto 0):=D(7 downto 0);
								  g:='0';				 
					when others =>null;
				end case;
			end if;
			CY<=g;
			Q(7 downto 0)<=reg(7 downto 0);
	end process;
end arc;							