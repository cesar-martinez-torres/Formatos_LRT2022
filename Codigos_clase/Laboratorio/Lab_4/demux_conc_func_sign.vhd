library IEEE;
use IEEE.std_logic_1164.all;

entity demux is
  port(
    Se: in std_logic;
    I0: in std_logic;
    O0: out std_logic;
    O1: out std_logic
    );
  end demux;

architecture arch_demux of demux is

signal Sen : std_logic;
begin
    O1 <= (Se) and (I0);
    Sen<= not(Se);
    O0 <= (Sen) and (I0);

end arch_demux;