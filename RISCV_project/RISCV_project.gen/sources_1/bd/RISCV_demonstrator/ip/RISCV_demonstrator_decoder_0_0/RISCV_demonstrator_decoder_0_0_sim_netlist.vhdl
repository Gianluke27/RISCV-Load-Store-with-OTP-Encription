-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Sep  8 21:41:01 2023
-- Host        : Gianluca running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               h:/TesiMagistrale/Github/RISCV_Enc_Load_Store/RISCV-Load-Store-with-OTP-Encription/RISCV_project/RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder_0_0/RISCV_demonstrator_decoder_0_0_sim_netlist.vhdl
-- Design      : RISCV_demonstrator_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCV_demonstrator_decoder_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCV_demonstrator_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCV_demonstrator_decoder_0_0 : entity is "RISCV_demonstrator_decoder_0_0,decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCV_demonstrator_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCV_demonstrator_decoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCV_demonstrator_decoder_0_0 : entity is "decoder,Vivado 2021.2";
end RISCV_demonstrator_decoder_0_0;

architecture STRUCTURE of RISCV_demonstrator_decoder_0_0 is
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      O => Y(0)
    );
\Y[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => Y(1)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      O => Y(2)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      O => Y(3)
    );
end STRUCTURE;
