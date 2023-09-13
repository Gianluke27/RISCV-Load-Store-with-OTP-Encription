-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Sep 12 16:00:44 2023
-- Host        : Gianluca running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/TesiMagistrale/Github/RISCV_Enc_Load_Store/RISCV-Load-Store-with-OTP-Encription/RISCV_project/RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder1to2_0_0/RISCV_demonstrator_decoder1to2_0_0_stub.vhdl
-- Design      : RISCV_demonstrator_decoder1to2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCV_demonstrator_decoder1to2_0_0 is
  Port ( 
    A : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end RISCV_demonstrator_decoder1to2_0_0;

architecture stub of RISCV_demonstrator_decoder1to2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,Y[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decoder1to2,Vivado 2021.2";
begin
end;
