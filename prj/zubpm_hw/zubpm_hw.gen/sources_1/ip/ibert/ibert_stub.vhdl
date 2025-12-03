-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Dec  3 09:23:05 2025
-- Host        : WPS-171005 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bouthsarath/ibert_dfe/prj/zubpm_hw/zubpm_hw.gen/sources_1/ip/ibert/ibert_stub.vhdl
-- Design      : ibert
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6eg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ibert is
  Port ( 
    txn_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txp_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxoutclk_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxn_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxp_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gtrefclk0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk1_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk1_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk0_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk1_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk00_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk10_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk01_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk11_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk00_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk10_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk01_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk11_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk00_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk10_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk01_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk11_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );

end ibert;

architecture stub of ibert is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "txn_o[7:0],txp_o[7:0],rxoutclk_o[7:0],rxn_i[7:0],rxp_i[7:0],gtrefclk0_i[1:0],gtrefclk1_i[1:0],gtnorthrefclk0_i[1:0],gtnorthrefclk1_i[1:0],gtsouthrefclk0_i[1:0],gtsouthrefclk1_i[1:0],gtrefclk00_i[1:0],gtrefclk10_i[1:0],gtrefclk01_i[1:0],gtrefclk11_i[1:0],gtnorthrefclk00_i[1:0],gtnorthrefclk10_i[1:0],gtnorthrefclk01_i[1:0],gtnorthrefclk11_i[1:0],gtsouthrefclk00_i[1:0],gtsouthrefclk10_i[1:0],gtsouthrefclk01_i[1:0],gtsouthrefclk11_i[1:0],clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ibert_ultrascale_gth,Vivado 2022.2";
begin
end;
