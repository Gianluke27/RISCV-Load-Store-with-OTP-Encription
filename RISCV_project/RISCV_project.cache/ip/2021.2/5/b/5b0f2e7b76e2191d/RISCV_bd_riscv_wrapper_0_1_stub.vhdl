-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Oct 12 20:04:24 2023
-- Host        : Gianluca running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RISCV_bd_riscv_wrapper_0_1_stub.vhdl
-- Design      : RISCV_bd_riscv_wrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axil_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axil_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axil_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,arstn,s_axil_awaddr[31:0],s_axil_awprot[2:0],s_axil_awvalid[0:0],s_axil_awready[0:0],s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid[0:0],s_axil_wready[0:0],s_axil_bresp[1:0],s_axil_bvalid[0:0],s_axil_bready[0:0],s_axil_araddr[31:0],s_axil_arprot[2:0],s_axil_arvalid[0:0],s_axil_arready[0:0],s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid[0:0],s_axil_rready[0:0],m_axil_awaddr[31:0],m_axil_awprot[2:0],m_axil_awvalid[0:0],m_axil_awready[0:0],m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_wvalid[0:0],m_axil_wready[0:0],m_axil_bresp[1:0],m_axil_bvalid[0:0],m_axil_bready[0:0],m_axil_araddr[31:0],m_axil_arprot[2:0],m_axil_arvalid[0:0],m_axil_arready[0:0],m_axil_rdata[31:0],m_axil_rresp[1:0],m_axil_rvalid[0:0],m_axil_rready[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "riscv_wrapper,Vivado 2021.2";
begin
end;
