-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Sep 12 16:00:44 2023
-- Host        : Gianluca running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top RISCV_demonstrator_decoder1to2_0_0 -prefix
--               RISCV_demonstrator_decoder1to2_0_0_ RISCV_demonstrator_decoder1to2_0_0_sim_netlist.vhdl
-- Design      : RISCV_demonstrator_decoder1to2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCV_demonstrator_decoder1to2_0_0 is
  port (
    A : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCV_demonstrator_decoder1to2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCV_demonstrator_decoder1to2_0_0 : entity is "RISCV_demonstrator_decoder1to2_0_0,decoder1to2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCV_demonstrator_decoder1to2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCV_demonstrator_decoder1to2_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCV_demonstrator_decoder1to2_0_0 : entity is "decoder1to2,Vivado 2021.2";
end RISCV_demonstrator_decoder1to2_0_0;

architecture STRUCTURE of RISCV_demonstrator_decoder1to2_0_0 is
  signal \^a\ : STD_LOGIC;
  signal \^y\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Y(1) <= \^a\;
  Y(0) <= \^y\(0);
  \^a\ <= A;
\Y[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\,
      O => \^y\(0)
    );
end STRUCTURE;
