-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/20/2025 19:37:15"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Roleta IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	KBD_KeyLin : IN std_logic_vector(3 DOWNTO 0);
	Coin : IN std_logic;
	CoinID : IN std_logic;
	Maintenance_in : IN std_logic;
	KBD_KeyCol : OUT std_logic_vector(3 DOWNTO 0);
	LCD_E : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_D : OUT std_logic_vector(7 DOWNTO 4);
	RD_HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	RD_HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	RD_HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	RD_HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	RD_HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	RD_HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	Accept : OUT std_logic;
	debug_full : OUT std_logic;
	debug_empty : OUT std_logic
	);
END Roleta;

-- Design Ports Information
-- KBD_KeyCol[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyCol[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyCol[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyCol[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Accept	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_full	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_empty	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CoinID	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Coin	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Maintenance_in	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyLin[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyLin[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyLin[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBD_KeyLin[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Roleta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_KBD_KeyLin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Coin : std_logic;
SIGNAL ww_CoinID : std_logic;
SIGNAL ww_Maintenance_in : std_logic;
SIGNAL ww_KBD_KeyCol : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_D : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_RD_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RD_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RD_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RD_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RD_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RD_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Accept : std_logic;
SIGNAL ww_debug_full : std_logic;
SIGNAL ww_debug_empty : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u0|u2|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|u1|state.enable~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u2|u0|BufferControl_Wreg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|u0|u2|Add0~0_combout\ : std_logic;
SIGNAL \u1|u0|u2|count[0]~7_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~1\ : std_logic;
SIGNAL \u1|u0|u2|Add0~2_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~3\ : std_logic;
SIGNAL \u1|u0|u2|Add0~4_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~5\ : std_logic;
SIGNAL \u1|u0|u2|Add0~6_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~0_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~7\ : std_logic;
SIGNAL \u1|u0|u2|Add0~8_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~9\ : std_logic;
SIGNAL \u1|u0|u2|Add0~10_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~11\ : std_logic;
SIGNAL \u1|u0|u2|Add0~12_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~1_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~13\ : std_logic;
SIGNAL \u1|u0|u2|Add0~14_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~15\ : std_logic;
SIGNAL \u1|u0|u2|Add0~16_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~17\ : std_logic;
SIGNAL \u1|u0|u2|Add0~18_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~19\ : std_logic;
SIGNAL \u1|u0|u2|Add0~20_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~21\ : std_logic;
SIGNAL \u1|u0|u2|Add0~22_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~2_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~23\ : std_logic;
SIGNAL \u1|u0|u2|Add0~24_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~25\ : std_logic;
SIGNAL \u1|u0|u2|Add0~26_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~3_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~27\ : std_logic;
SIGNAL \u1|u0|u2|Add0~28_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~4_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~29\ : std_logic;
SIGNAL \u1|u0|u2|Add0~30_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~5_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~31\ : std_logic;
SIGNAL \u1|u0|u2|Add0~32_combout\ : std_logic;
SIGNAL \u1|u0|u2|count~6_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~33\ : std_logic;
SIGNAL \u1|u0|u2|Add0~34_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~35\ : std_logic;
SIGNAL \u1|u0|u2|Add0~36_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~37\ : std_logic;
SIGNAL \u1|u0|u2|Add0~38_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~39\ : std_logic;
SIGNAL \u1|u0|u2|Add0~40_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~41\ : std_logic;
SIGNAL \u1|u0|u2|Add0~42_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~43\ : std_logic;
SIGNAL \u1|u0|u2|Add0~44_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~45\ : std_logic;
SIGNAL \u1|u0|u2|Add0~46_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~47\ : std_logic;
SIGNAL \u1|u0|u2|Add0~48_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~49\ : std_logic;
SIGNAL \u1|u0|u2|Add0~50_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~7_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~51\ : std_logic;
SIGNAL \u1|u0|u2|Add0~52_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~53\ : std_logic;
SIGNAL \u1|u0|u2|Add0~54_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~55\ : std_logic;
SIGNAL \u1|u0|u2|Add0~56_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~57\ : std_logic;
SIGNAL \u1|u0|u2|Add0~58_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~59\ : std_logic;
SIGNAL \u1|u0|u2|Add0~60_combout\ : std_logic;
SIGNAL \u1|u0|u2|Add0~61\ : std_logic;
SIGNAL \u1|u0|u2|Add0~62_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~8_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~9_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~5_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~6_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~1_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~2_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~3_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~0_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~4_combout\ : std_logic;
SIGNAL \u1|u0|u2|Equal0~10_combout\ : std_logic;
SIGNAL \u1|u0|u2|tmp~0_combout\ : std_logic;
SIGNAL \u1|u0|u2|tmp~q\ : std_logic;
SIGNAL \u1|u0|u2|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KBD_KeyLin[3]~input_o\ : std_logic;
SIGNAL \KBD_KeyLin[1]~input_o\ : std_logic;
SIGNAL \KBD_KeyLin[0]~input_o\ : std_logic;
SIGNAL \u1|u0|u1|state.hold~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \u1|u1|u1|incPut~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|incPut~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out[0]~5_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out[1]~4_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out[2]~3_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out[4]~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|incGet~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|incGet~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out[3]~6_combout\ : std_logic;
SIGNAL \u1|u1|u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_0~1_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_0~q\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_1~1_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_1~2_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_1~q\ : std_logic;
SIGNAL \u1|u2|u0|BufferControl_Wreg~combout\ : std_logic;
SIGNAL \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out[0]~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out[1]~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out[2]~4_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out[3]~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out[3]~3_combout\ : std_logic;
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out[0]~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out[1]~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out[2]~4_combout\ : std_logic;
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out[3]~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out[3]~3_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~109_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~26_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~111_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~30_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~110_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~18_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~108_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~22_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~84_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~85_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~119_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~62_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~117_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~58_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~118_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~50_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~116_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~54_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~91_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~92_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~114_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~2_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~112_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~10_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~88_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~113_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~6_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~115_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~14_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~89_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~105_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~38_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~107_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~46_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~106_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~34_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~104_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \u1|u1|u2|ram~42_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~86_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~87_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~90_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~93_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~45_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~13_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~29_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~81_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~61_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~82_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~5_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~21_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~76_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~37_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~53_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~77_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~17_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~49_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~1_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~33_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~78_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~79_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~80_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~25_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~41_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~9_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~74_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~57_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~75_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~83_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out[0]~4_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~40_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~44_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~32_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~36_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~64_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~65_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~60_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~52_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~48_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~56_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~71_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~72_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~20_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~28_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~16_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~24_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~66_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~67_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~8_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~12_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~4_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~68_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~69_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~70_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~73_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \Maintenance_in~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \Coin~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \CoinID~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \u1|u2|u0|state.data_available~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out[3]~1_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~3_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~19_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~98_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~51_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~35_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~99_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~59_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~11_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~27_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~96_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~43_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~97_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~100_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~31_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~63_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~15_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~47_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~101_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~102_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~7_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~39_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~94_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~23_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~55_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~95_combout\ : std_logic;
SIGNAL \u1|u1|u2|ram~103_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \u1|u2|u0|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u1|u2|u0|state.state_bit_1~q\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u1|u2|u0|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u1|u2|u0|state.state_bit_0~q\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_2~2_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_2~3_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_2~4_combout\ : std_logic;
SIGNAL \u1|u1|u0|state.state_bit_2~q\ : std_logic;
SIGNAL \u1|u0|u1|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u1|u0|u1|state.state_bit_1~1_combout\ : std_logic;
SIGNAL \u1|u0|u1|state.state_bit_1~q\ : std_logic;
SIGNAL \u1|u0|u1|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u1|u0|u1|state.state_bit_0~q\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out[1]~3_combout\ : std_logic;
SIGNAL \u1|u0|u0|u2|Mux4_Out~0_combout\ : std_logic;
SIGNAL \KBD_KeyLin[2]~input_o\ : std_logic;
SIGNAL \u1|u0|u0|u2|Mux4_Out~1_combout\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out[2]~2_combout\ : std_logic;
SIGNAL \u1|u0|u0|u1|Dec4_Out[1]~0_combout\ : std_logic;
SIGNAL \u1|u0|u0|u1|Dec4_Out[1]~1_combout\ : std_logic;
SIGNAL \u1|u0|u0|u1|Dec4_Out[1]~2_combout\ : std_logic;
SIGNAL \u2|u1|count_enable~0_combout\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[4]~0_combout\ : std_logic;
SIGNAL \u2|u1|state.reset_counter~1_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_1~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \u2|u0|u3|u1|Reg3_Out[0]~2_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.start~0_combout\ : std_logic;
SIGNAL \u2|u0|u3|u1|Reg3_Out[1]~0_combout\ : std_logic;
SIGNAL \u2|u0|u3|u1|Reg3_Out[2]~1_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_1~1_combout\ : std_logic;
SIGNAL \u2|u0|pFlag~0_combout\ : std_logic;
SIGNAL \u2|u0|u2|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \u2|u0|u2|Q~q\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_1~3_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_1~q\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_0~1_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_0~2_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_0~q\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_2~0_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.state_bit_2~q\ : std_logic;
SIGNAL \u2|u0|u0|state.output_data~0_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u2|u1|state.reset_counter~0_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_0~2_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_0~q\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[0]~5_combout\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[1]~1_combout\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[1]~4_combout\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[2]~3_combout\ : std_logic;
SIGNAL \u2|u1|u0|u1|Reg5_Out[3]~2_combout\ : std_logic;
SIGNAL \u2|u1|Equal0~0_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_2~0_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_2~1_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_2~q\ : std_logic;
SIGNAL \u2|u1|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u2|u1|state.state_bit_1~q\ : std_logic;
SIGNAL \u2|u1|state.enable~0_combout\ : std_logic;
SIGNAL \u2|u0|u1|D[4]~feeder_combout\ : std_logic;
SIGNAL \u2|u0|u0|state.wait_for_data~0_combout\ : std_logic;
SIGNAL \u2|u0|u1|D[3]~feeder_combout\ : std_logic;
SIGNAL \u2|u0|u1|D[2]~feeder_combout\ : std_logic;
SIGNAL \u2|u0|u1|D[1]~feeder_combout\ : std_logic;
SIGNAL \u2|u0|u1|D[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \u3|u0|u3|u1|Reg4_Out[0]~3_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.start~0_combout\ : std_logic;
SIGNAL \u3|u0|u3|u1|Reg4_Out[1]~2_combout\ : std_logic;
SIGNAL \u3|u0|u3|u1|Reg4_Out[2]~1_combout\ : std_logic;
SIGNAL \u3|u0|u3|u1|Reg4_Out[3]~0_combout\ : std_logic;
SIGNAL \u3|u0|pFlag~0_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_0~1_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_0~q\ : std_logic;
SIGNAL \u3|u0|u2|Q~0_combout\ : std_logic;
SIGNAL \u3|u0|u2|Q~q\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_1~1_combout\ : std_logic;
SIGNAL \u3|u1|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u3|u1|state.state_bit_1~q\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_1~0_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.wait_for_data~0_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_1~2_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_1~3_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_1~q\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_2~0_combout\ : std_logic;
SIGNAL \u3|u0|u0|state.state_bit_2~q\ : std_logic;
SIGNAL \u3|u0|u0|state.output_data~0_combout\ : std_logic;
SIGNAL \u3|u1|state.state_bit_0~0_combout\ : std_logic;
SIGNAL \u3|u1|state.state_bit_0~q\ : std_logic;
SIGNAL \u3|u1|state.enable~0_combout\ : std_logic;
SIGNAL \u3|u1|state.enable~0clkctrl_outclk\ : std_logic;
SIGNAL \u3|u0|u1|D[7]~feeder_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[6]~feeder_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[5]~feeder_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[4]~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[3]~feeder_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[2]~feeder_combout\ : std_logic;
SIGNAL \u3|u0|u1|D[1]~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|clear_reg|Q~0_combout\ : std_logic;
SIGNAL \u4|clear_reg|Q~1_combout\ : std_logic;
SIGNAL \u4|clear_reg|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:0:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u4|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U4|Q~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:1:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U4|Q~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:2:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:3:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u4|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U4|Q~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:4:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U4|Q~0_combout\ : std_logic;
SIGNAL \u4|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U4|Q~feeder_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U4|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U1|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U2|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U0|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U3|Q~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:in_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:out_reg|U3|Q~q\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[0]~2_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[1]~4_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[1]~5_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[2]~7_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[2]~8_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[3]~10_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[3]~9_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[3]~11_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[4]~13_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[4]~12_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[4]~14_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[5]~16_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[5]~15_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[5]~17_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[6]~19_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[6]~18_combout\ : std_logic;
SIGNAL \u4|circuit_gen:5:hex_digit|Ndout[6]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \u1|u1|u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|Equal1~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \u1|u0|u0|u0|u1|Reg4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u0|u0|u1|Dec4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u2|u0|u1|D\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u3|u0|u1|D\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|u1|u0|u1|Reg5_Out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|u1|u1|u2|u1|Reg5_Out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|u1|u1|u1|u1|Reg4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u2|u1|Reg4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u1|u1|u0|u1|Reg4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u0|u2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u2|u0|u3|u1|Reg3_Out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u4|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u0|u3|u1|Reg4_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~2_combout\ : std_logic;
SIGNAL \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~1_combout\ : std_logic;
SIGNAL \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \u1|u0|u2|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \u3|u0|u0|ALT_INV_state.start~0_combout\ : std_logic;
SIGNAL \u2|u0|u0|ALT_INV_state.start~0_combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_state.reset_counter~1_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLK <= CLK;
ww_Reset <= Reset;
ww_KBD_KeyLin <= KBD_KeyLin;
ww_Coin <= Coin;
ww_CoinID <= CoinID;
ww_Maintenance_in <= Maintenance_in;
KBD_KeyCol <= ww_KBD_KeyCol;
LCD_E <= ww_LCD_E;
LCD_RS <= ww_LCD_RS;
LCD_D <= ww_LCD_D;
RD_HEX0 <= ww_RD_HEX0;
RD_HEX1 <= ww_RD_HEX1;
RD_HEX2 <= ww_RD_HEX2;
RD_HEX3 <= ww_RD_HEX3;
RD_HEX4 <= ww_RD_HEX4;
RD_HEX5 <= ww_RD_HEX5;
Accept <= ww_Accept;
debug_full <= ww_debug_full;
debug_empty <= ww_debug_empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\u1|u0|u2|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|u0|u2|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\u3|u1|state.enable~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|u1|state.enable~0_combout\);

\u1|u2|u0|BufferControl_Wreg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|u2|u0|BufferControl_Wreg~combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);
\u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~2_combout\ <= NOT \u1|u0|u0|u1|Dec4_Out[1]~2_combout\;
\u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~1_combout\ <= NOT \u1|u0|u0|u1|Dec4_Out[1]~1_combout\;
\u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~0_combout\ <= NOT \u1|u0|u0|u1|Dec4_Out[1]~0_combout\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\u1|u0|u2|ALT_INV_tmp~clkctrl_outclk\ <= NOT \u1|u0|u2|tmp~clkctrl_outclk\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\u3|u0|u0|ALT_INV_state.start~0_combout\ <= NOT \u3|u0|u0|state.start~0_combout\;
\u2|u0|u0|ALT_INV_state.start~0_combout\ <= NOT \u2|u0|u0|state.start~0_combout\;
\u2|u1|ALT_INV_state.reset_counter~1_combout\ <= NOT \u2|u1|state.reset_counter~1_combout\;

-- Location: FF_X47_Y43_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X46_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X46_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X46_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X46_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X47_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y51_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X45_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X45_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\KBD_KeyCol[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u0|u0|u1|Dec4_Out\(0),
	devoe => ww_devoe,
	o => ww_KBD_KeyCol(0));

-- Location: IOOBUF_X38_Y0_N16
\KBD_KeyCol[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_KBD_KeyCol(1));

-- Location: IOOBUF_X34_Y0_N23
\KBD_KeyCol[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_KBD_KeyCol(2));

-- Location: IOOBUF_X31_Y0_N16
\KBD_KeyCol[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u0|u0|u1|ALT_INV_Dec4_Out[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_KBD_KeyCol(3));

-- Location: IOOBUF_X14_Y0_N9
\LCD_E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u1|state.enable~0_combout\,
	devoe => ww_devoe,
	o => ww_LCD_E);

-- Location: IOOBUF_X24_Y0_N2
\LCD_RS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|u1|D\(0),
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X36_Y0_N9
\LCD_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|u1|D\(1),
	devoe => ww_devoe,
	o => ww_LCD_D(4));

-- Location: IOOBUF_X34_Y0_N2
\LCD_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|u1|D\(2),
	devoe => ww_devoe,
	o => ww_LCD_D(5));

-- Location: IOOBUF_X20_Y0_N2
\LCD_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|u1|D\(3),
	devoe => ww_devoe,
	o => ww_LCD_D(6));

-- Location: IOOBUF_X20_Y0_N9
\LCD_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|u1|D\(4),
	devoe => ww_devoe,
	o => ww_LCD_D(7));

-- Location: IOOBUF_X58_Y54_N16
\RD_HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\RD_HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\RD_HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\RD_HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\RD_HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\RD_HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\RD_HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:0:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\RD_HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\RD_HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\RD_HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\RD_HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\RD_HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\RD_HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\RD_HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\RD_HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:1:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\RD_HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\RD_HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\RD_HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\RD_HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\RD_HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\RD_HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\RD_HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\RD_HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:2:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\RD_HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\RD_HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\RD_HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\RD_HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\RD_HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\RD_HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\RD_HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\RD_HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:3:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\RD_HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\RD_HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\RD_HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\RD_HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\RD_HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\RD_HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\RD_HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\RD_HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:4:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\RD_HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\RD_HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\RD_HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\RD_HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[2]~8_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\RD_HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[3]~11_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\RD_HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\RD_HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[5]~17_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\RD_HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|circuit_gen:5:hex_digit|Ndout[6]~20_combout\,
	devoe => ww_devoe,
	o => ww_RD_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\RD_HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RD_HEX5(7));

-- Location: IOOBUF_X51_Y54_N9
\Accept~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	devoe => ww_devoe,
	o => ww_Accept);

-- Location: IOOBUF_X46_Y54_N23
\debug_full~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u1|u1|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_debug_full);

-- Location: IOOBUF_X46_Y54_N2
\debug_empty~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u1|u1|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_debug_empty);

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y27_N0
\u1|u0|u2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~0_combout\ = \u1|u0|u2|count\(0) $ (GND)
-- \u1|u0|u2|Add0~1\ = CARRY(!\u1|u0|u2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(0),
	datad => VCC,
	combout => \u1|u0|u2|Add0~0_combout\,
	cout => \u1|u0|u2|Add0~1\);

-- Location: LCCOMB_X16_Y27_N4
\u1|u0|u2|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count[0]~7_combout\ = !\u1|u0|u2|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|Add0~0_combout\,
	combout => \u1|u0|u2|count[0]~7_combout\);

-- Location: FF_X16_Y27_N5
\u1|u0|u2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(0));

-- Location: LCCOMB_X15_Y27_N2
\u1|u0|u2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~2_combout\ = (\u1|u0|u2|count\(1) & (!\u1|u0|u2|Add0~1\)) # (!\u1|u0|u2|count\(1) & ((\u1|u0|u2|Add0~1\) # (GND)))
-- \u1|u0|u2|Add0~3\ = CARRY((!\u1|u0|u2|Add0~1\) # (!\u1|u0|u2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(1),
	datad => VCC,
	cin => \u1|u0|u2|Add0~1\,
	combout => \u1|u0|u2|Add0~2_combout\,
	cout => \u1|u0|u2|Add0~3\);

-- Location: FF_X15_Y27_N3
\u1|u0|u2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(1));

-- Location: LCCOMB_X15_Y27_N4
\u1|u0|u2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~4_combout\ = (\u1|u0|u2|count\(2) & (\u1|u0|u2|Add0~3\ $ (GND))) # (!\u1|u0|u2|count\(2) & (!\u1|u0|u2|Add0~3\ & VCC))
-- \u1|u0|u2|Add0~5\ = CARRY((\u1|u0|u2|count\(2) & !\u1|u0|u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(2),
	datad => VCC,
	cin => \u1|u0|u2|Add0~3\,
	combout => \u1|u0|u2|Add0~4_combout\,
	cout => \u1|u0|u2|Add0~5\);

-- Location: FF_X15_Y27_N5
\u1|u0|u2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(2));

-- Location: LCCOMB_X15_Y27_N6
\u1|u0|u2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~6_combout\ = (\u1|u0|u2|count\(3) & (!\u1|u0|u2|Add0~5\)) # (!\u1|u0|u2|count\(3) & ((\u1|u0|u2|Add0~5\) # (GND)))
-- \u1|u0|u2|Add0~7\ = CARRY((!\u1|u0|u2|Add0~5\) # (!\u1|u0|u2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(3),
	datad => VCC,
	cin => \u1|u0|u2|Add0~5\,
	combout => \u1|u0|u2|Add0~6_combout\,
	cout => \u1|u0|u2|Add0~7\);

-- Location: LCCOMB_X16_Y27_N10
\u1|u0|u2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~0_combout\ = (\u1|u0|u2|Add0~6_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|Add0~6_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~0_combout\);

-- Location: FF_X16_Y27_N11
\u1|u0|u2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(3));

-- Location: LCCOMB_X15_Y27_N8
\u1|u0|u2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~8_combout\ = (\u1|u0|u2|count\(4) & (\u1|u0|u2|Add0~7\ $ (GND))) # (!\u1|u0|u2|count\(4) & (!\u1|u0|u2|Add0~7\ & VCC))
-- \u1|u0|u2|Add0~9\ = CARRY((\u1|u0|u2|count\(4) & !\u1|u0|u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(4),
	datad => VCC,
	cin => \u1|u0|u2|Add0~7\,
	combout => \u1|u0|u2|Add0~8_combout\,
	cout => \u1|u0|u2|Add0~9\);

-- Location: FF_X15_Y27_N9
\u1|u0|u2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(4));

-- Location: LCCOMB_X15_Y27_N10
\u1|u0|u2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~10_combout\ = (\u1|u0|u2|count\(5) & (!\u1|u0|u2|Add0~9\)) # (!\u1|u0|u2|count\(5) & ((\u1|u0|u2|Add0~9\) # (GND)))
-- \u1|u0|u2|Add0~11\ = CARRY((!\u1|u0|u2|Add0~9\) # (!\u1|u0|u2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(5),
	datad => VCC,
	cin => \u1|u0|u2|Add0~9\,
	combout => \u1|u0|u2|Add0~10_combout\,
	cout => \u1|u0|u2|Add0~11\);

-- Location: FF_X15_Y27_N11
\u1|u0|u2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(5));

-- Location: LCCOMB_X15_Y27_N12
\u1|u0|u2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~12_combout\ = (\u1|u0|u2|count\(6) & (\u1|u0|u2|Add0~11\ $ (GND))) # (!\u1|u0|u2|count\(6) & (!\u1|u0|u2|Add0~11\ & VCC))
-- \u1|u0|u2|Add0~13\ = CARRY((\u1|u0|u2|count\(6) & !\u1|u0|u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(6),
	datad => VCC,
	cin => \u1|u0|u2|Add0~11\,
	combout => \u1|u0|u2|Add0~12_combout\,
	cout => \u1|u0|u2|Add0~13\);

-- Location: LCCOMB_X16_Y27_N16
\u1|u0|u2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~1_combout\ = (\u1|u0|u2|Add0~12_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|Add0~12_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~1_combout\);

-- Location: FF_X16_Y27_N17
\u1|u0|u2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(6));

-- Location: LCCOMB_X15_Y27_N14
\u1|u0|u2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~14_combout\ = (\u1|u0|u2|count\(7) & (!\u1|u0|u2|Add0~13\)) # (!\u1|u0|u2|count\(7) & ((\u1|u0|u2|Add0~13\) # (GND)))
-- \u1|u0|u2|Add0~15\ = CARRY((!\u1|u0|u2|Add0~13\) # (!\u1|u0|u2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(7),
	datad => VCC,
	cin => \u1|u0|u2|Add0~13\,
	combout => \u1|u0|u2|Add0~14_combout\,
	cout => \u1|u0|u2|Add0~15\);

-- Location: FF_X15_Y27_N15
\u1|u0|u2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(7));

-- Location: LCCOMB_X15_Y27_N16
\u1|u0|u2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~16_combout\ = (\u1|u0|u2|count\(8) & (\u1|u0|u2|Add0~15\ $ (GND))) # (!\u1|u0|u2|count\(8) & (!\u1|u0|u2|Add0~15\ & VCC))
-- \u1|u0|u2|Add0~17\ = CARRY((\u1|u0|u2|count\(8) & !\u1|u0|u2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(8),
	datad => VCC,
	cin => \u1|u0|u2|Add0~15\,
	combout => \u1|u0|u2|Add0~16_combout\,
	cout => \u1|u0|u2|Add0~17\);

-- Location: FF_X15_Y27_N17
\u1|u0|u2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(8));

-- Location: LCCOMB_X15_Y27_N18
\u1|u0|u2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~18_combout\ = (\u1|u0|u2|count\(9) & (!\u1|u0|u2|Add0~17\)) # (!\u1|u0|u2|count\(9) & ((\u1|u0|u2|Add0~17\) # (GND)))
-- \u1|u0|u2|Add0~19\ = CARRY((!\u1|u0|u2|Add0~17\) # (!\u1|u0|u2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(9),
	datad => VCC,
	cin => \u1|u0|u2|Add0~17\,
	combout => \u1|u0|u2|Add0~18_combout\,
	cout => \u1|u0|u2|Add0~19\);

-- Location: FF_X15_Y27_N19
\u1|u0|u2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(9));

-- Location: LCCOMB_X15_Y27_N20
\u1|u0|u2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~20_combout\ = (\u1|u0|u2|count\(10) & (\u1|u0|u2|Add0~19\ $ (GND))) # (!\u1|u0|u2|count\(10) & (!\u1|u0|u2|Add0~19\ & VCC))
-- \u1|u0|u2|Add0~21\ = CARRY((\u1|u0|u2|count\(10) & !\u1|u0|u2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(10),
	datad => VCC,
	cin => \u1|u0|u2|Add0~19\,
	combout => \u1|u0|u2|Add0~20_combout\,
	cout => \u1|u0|u2|Add0~21\);

-- Location: FF_X15_Y27_N21
\u1|u0|u2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(10));

-- Location: LCCOMB_X15_Y27_N22
\u1|u0|u2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~22_combout\ = (\u1|u0|u2|count\(11) & (!\u1|u0|u2|Add0~21\)) # (!\u1|u0|u2|count\(11) & ((\u1|u0|u2|Add0~21\) # (GND)))
-- \u1|u0|u2|Add0~23\ = CARRY((!\u1|u0|u2|Add0~21\) # (!\u1|u0|u2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(11),
	datad => VCC,
	cin => \u1|u0|u2|Add0~21\,
	combout => \u1|u0|u2|Add0~22_combout\,
	cout => \u1|u0|u2|Add0~23\);

-- Location: LCCOMB_X16_Y27_N12
\u1|u0|u2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~2_combout\ = (\u1|u0|u2|Add0~22_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|Add0~22_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~2_combout\);

-- Location: FF_X16_Y27_N13
\u1|u0|u2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(11));

-- Location: LCCOMB_X15_Y27_N24
\u1|u0|u2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~24_combout\ = (\u1|u0|u2|count\(12) & (\u1|u0|u2|Add0~23\ $ (GND))) # (!\u1|u0|u2|count\(12) & (!\u1|u0|u2|Add0~23\ & VCC))
-- \u1|u0|u2|Add0~25\ = CARRY((\u1|u0|u2|count\(12) & !\u1|u0|u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(12),
	datad => VCC,
	cin => \u1|u0|u2|Add0~23\,
	combout => \u1|u0|u2|Add0~24_combout\,
	cout => \u1|u0|u2|Add0~25\);

-- Location: FF_X15_Y27_N25
\u1|u0|u2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(12));

-- Location: LCCOMB_X15_Y27_N26
\u1|u0|u2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~26_combout\ = (\u1|u0|u2|count\(13) & (!\u1|u0|u2|Add0~25\)) # (!\u1|u0|u2|count\(13) & ((\u1|u0|u2|Add0~25\) # (GND)))
-- \u1|u0|u2|Add0~27\ = CARRY((!\u1|u0|u2|Add0~25\) # (!\u1|u0|u2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(13),
	datad => VCC,
	cin => \u1|u0|u2|Add0~25\,
	combout => \u1|u0|u2|Add0~26_combout\,
	cout => \u1|u0|u2|Add0~27\);

-- Location: LCCOMB_X16_Y27_N0
\u1|u0|u2|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~3_combout\ = (\u1|u0|u2|Add0~26_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|Add0~26_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~3_combout\);

-- Location: FF_X16_Y27_N1
\u1|u0|u2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(13));

-- Location: LCCOMB_X15_Y27_N28
\u1|u0|u2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~28_combout\ = (\u1|u0|u2|count\(14) & (\u1|u0|u2|Add0~27\ $ (GND))) # (!\u1|u0|u2|count\(14) & (!\u1|u0|u2|Add0~27\ & VCC))
-- \u1|u0|u2|Add0~29\ = CARRY((\u1|u0|u2|count\(14) & !\u1|u0|u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(14),
	datad => VCC,
	cin => \u1|u0|u2|Add0~27\,
	combout => \u1|u0|u2|Add0~28_combout\,
	cout => \u1|u0|u2|Add0~29\);

-- Location: LCCOMB_X16_Y27_N2
\u1|u0|u2|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~4_combout\ = (\u1|u0|u2|Add0~28_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|Add0~28_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~4_combout\);

-- Location: FF_X16_Y27_N3
\u1|u0|u2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(14));

-- Location: LCCOMB_X15_Y27_N30
\u1|u0|u2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~30_combout\ = (\u1|u0|u2|count\(15) & (!\u1|u0|u2|Add0~29\)) # (!\u1|u0|u2|count\(15) & ((\u1|u0|u2|Add0~29\) # (GND)))
-- \u1|u0|u2|Add0~31\ = CARRY((!\u1|u0|u2|Add0~29\) # (!\u1|u0|u2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(15),
	datad => VCC,
	cin => \u1|u0|u2|Add0~29\,
	combout => \u1|u0|u2|Add0~30_combout\,
	cout => \u1|u0|u2|Add0~31\);

-- Location: LCCOMB_X16_Y27_N20
\u1|u0|u2|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~5_combout\ = (\u1|u0|u2|Add0~30_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|Add0~30_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~5_combout\);

-- Location: FF_X16_Y27_N21
\u1|u0|u2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(15));

-- Location: LCCOMB_X15_Y26_N0
\u1|u0|u2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~32_combout\ = (\u1|u0|u2|count\(16) & (\u1|u0|u2|Add0~31\ $ (GND))) # (!\u1|u0|u2|count\(16) & (!\u1|u0|u2|Add0~31\ & VCC))
-- \u1|u0|u2|Add0~33\ = CARRY((\u1|u0|u2|count\(16) & !\u1|u0|u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(16),
	datad => VCC,
	cin => \u1|u0|u2|Add0~31\,
	combout => \u1|u0|u2|Add0~32_combout\,
	cout => \u1|u0|u2|Add0~33\);

-- Location: LCCOMB_X16_Y27_N26
\u1|u0|u2|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|count~6_combout\ = (\u1|u0|u2|Add0~32_combout\ & !\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|Add0~32_combout\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|count~6_combout\);

-- Location: FF_X16_Y27_N27
\u1|u0|u2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(16));

-- Location: LCCOMB_X15_Y26_N2
\u1|u0|u2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~34_combout\ = (\u1|u0|u2|count\(17) & (!\u1|u0|u2|Add0~33\)) # (!\u1|u0|u2|count\(17) & ((\u1|u0|u2|Add0~33\) # (GND)))
-- \u1|u0|u2|Add0~35\ = CARRY((!\u1|u0|u2|Add0~33\) # (!\u1|u0|u2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(17),
	datad => VCC,
	cin => \u1|u0|u2|Add0~33\,
	combout => \u1|u0|u2|Add0~34_combout\,
	cout => \u1|u0|u2|Add0~35\);

-- Location: FF_X15_Y26_N3
\u1|u0|u2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(17));

-- Location: LCCOMB_X15_Y26_N4
\u1|u0|u2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~36_combout\ = (\u1|u0|u2|count\(18) & (\u1|u0|u2|Add0~35\ $ (GND))) # (!\u1|u0|u2|count\(18) & (!\u1|u0|u2|Add0~35\ & VCC))
-- \u1|u0|u2|Add0~37\ = CARRY((\u1|u0|u2|count\(18) & !\u1|u0|u2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(18),
	datad => VCC,
	cin => \u1|u0|u2|Add0~35\,
	combout => \u1|u0|u2|Add0~36_combout\,
	cout => \u1|u0|u2|Add0~37\);

-- Location: FF_X15_Y26_N5
\u1|u0|u2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(18));

-- Location: LCCOMB_X15_Y26_N6
\u1|u0|u2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~38_combout\ = (\u1|u0|u2|count\(19) & (!\u1|u0|u2|Add0~37\)) # (!\u1|u0|u2|count\(19) & ((\u1|u0|u2|Add0~37\) # (GND)))
-- \u1|u0|u2|Add0~39\ = CARRY((!\u1|u0|u2|Add0~37\) # (!\u1|u0|u2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(19),
	datad => VCC,
	cin => \u1|u0|u2|Add0~37\,
	combout => \u1|u0|u2|Add0~38_combout\,
	cout => \u1|u0|u2|Add0~39\);

-- Location: FF_X15_Y26_N7
\u1|u0|u2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(19));

-- Location: LCCOMB_X15_Y26_N8
\u1|u0|u2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~40_combout\ = (\u1|u0|u2|count\(20) & (\u1|u0|u2|Add0~39\ $ (GND))) # (!\u1|u0|u2|count\(20) & (!\u1|u0|u2|Add0~39\ & VCC))
-- \u1|u0|u2|Add0~41\ = CARRY((\u1|u0|u2|count\(20) & !\u1|u0|u2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(20),
	datad => VCC,
	cin => \u1|u0|u2|Add0~39\,
	combout => \u1|u0|u2|Add0~40_combout\,
	cout => \u1|u0|u2|Add0~41\);

-- Location: FF_X15_Y26_N9
\u1|u0|u2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(20));

-- Location: LCCOMB_X15_Y26_N10
\u1|u0|u2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~42_combout\ = (\u1|u0|u2|count\(21) & (!\u1|u0|u2|Add0~41\)) # (!\u1|u0|u2|count\(21) & ((\u1|u0|u2|Add0~41\) # (GND)))
-- \u1|u0|u2|Add0~43\ = CARRY((!\u1|u0|u2|Add0~41\) # (!\u1|u0|u2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(21),
	datad => VCC,
	cin => \u1|u0|u2|Add0~41\,
	combout => \u1|u0|u2|Add0~42_combout\,
	cout => \u1|u0|u2|Add0~43\);

-- Location: FF_X15_Y26_N11
\u1|u0|u2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(21));

-- Location: LCCOMB_X15_Y26_N12
\u1|u0|u2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~44_combout\ = (\u1|u0|u2|count\(22) & (\u1|u0|u2|Add0~43\ $ (GND))) # (!\u1|u0|u2|count\(22) & (!\u1|u0|u2|Add0~43\ & VCC))
-- \u1|u0|u2|Add0~45\ = CARRY((\u1|u0|u2|count\(22) & !\u1|u0|u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(22),
	datad => VCC,
	cin => \u1|u0|u2|Add0~43\,
	combout => \u1|u0|u2|Add0~44_combout\,
	cout => \u1|u0|u2|Add0~45\);

-- Location: FF_X15_Y26_N13
\u1|u0|u2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(22));

-- Location: LCCOMB_X15_Y26_N14
\u1|u0|u2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~46_combout\ = (\u1|u0|u2|count\(23) & (!\u1|u0|u2|Add0~45\)) # (!\u1|u0|u2|count\(23) & ((\u1|u0|u2|Add0~45\) # (GND)))
-- \u1|u0|u2|Add0~47\ = CARRY((!\u1|u0|u2|Add0~45\) # (!\u1|u0|u2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(23),
	datad => VCC,
	cin => \u1|u0|u2|Add0~45\,
	combout => \u1|u0|u2|Add0~46_combout\,
	cout => \u1|u0|u2|Add0~47\);

-- Location: FF_X15_Y26_N15
\u1|u0|u2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(23));

-- Location: LCCOMB_X15_Y26_N16
\u1|u0|u2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~48_combout\ = (\u1|u0|u2|count\(24) & (\u1|u0|u2|Add0~47\ $ (GND))) # (!\u1|u0|u2|count\(24) & (!\u1|u0|u2|Add0~47\ & VCC))
-- \u1|u0|u2|Add0~49\ = CARRY((\u1|u0|u2|count\(24) & !\u1|u0|u2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(24),
	datad => VCC,
	cin => \u1|u0|u2|Add0~47\,
	combout => \u1|u0|u2|Add0~48_combout\,
	cout => \u1|u0|u2|Add0~49\);

-- Location: FF_X15_Y26_N17
\u1|u0|u2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(24));

-- Location: LCCOMB_X15_Y26_N18
\u1|u0|u2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~50_combout\ = (\u1|u0|u2|count\(25) & (!\u1|u0|u2|Add0~49\)) # (!\u1|u0|u2|count\(25) & ((\u1|u0|u2|Add0~49\) # (GND)))
-- \u1|u0|u2|Add0~51\ = CARRY((!\u1|u0|u2|Add0~49\) # (!\u1|u0|u2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(25),
	datad => VCC,
	cin => \u1|u0|u2|Add0~49\,
	combout => \u1|u0|u2|Add0~50_combout\,
	cout => \u1|u0|u2|Add0~51\);

-- Location: FF_X15_Y26_N19
\u1|u0|u2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(25));

-- Location: LCCOMB_X16_Y26_N10
\u1|u0|u2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~7_combout\ = (!\u1|u0|u2|count\(24) & !\u1|u0|u2|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|count\(24),
	datad => \u1|u0|u2|count\(25),
	combout => \u1|u0|u2|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y26_N20
\u1|u0|u2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~52_combout\ = (\u1|u0|u2|count\(26) & (\u1|u0|u2|Add0~51\ $ (GND))) # (!\u1|u0|u2|count\(26) & (!\u1|u0|u2|Add0~51\ & VCC))
-- \u1|u0|u2|Add0~53\ = CARRY((\u1|u0|u2|count\(26) & !\u1|u0|u2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(26),
	datad => VCC,
	cin => \u1|u0|u2|Add0~51\,
	combout => \u1|u0|u2|Add0~52_combout\,
	cout => \u1|u0|u2|Add0~53\);

-- Location: FF_X15_Y26_N21
\u1|u0|u2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(26));

-- Location: LCCOMB_X15_Y26_N22
\u1|u0|u2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~54_combout\ = (\u1|u0|u2|count\(27) & (!\u1|u0|u2|Add0~53\)) # (!\u1|u0|u2|count\(27) & ((\u1|u0|u2|Add0~53\) # (GND)))
-- \u1|u0|u2|Add0~55\ = CARRY((!\u1|u0|u2|Add0~53\) # (!\u1|u0|u2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(27),
	datad => VCC,
	cin => \u1|u0|u2|Add0~53\,
	combout => \u1|u0|u2|Add0~54_combout\,
	cout => \u1|u0|u2|Add0~55\);

-- Location: FF_X15_Y26_N23
\u1|u0|u2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(27));

-- Location: LCCOMB_X15_Y26_N24
\u1|u0|u2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~56_combout\ = (\u1|u0|u2|count\(28) & (\u1|u0|u2|Add0~55\ $ (GND))) # (!\u1|u0|u2|count\(28) & (!\u1|u0|u2|Add0~55\ & VCC))
-- \u1|u0|u2|Add0~57\ = CARRY((\u1|u0|u2|count\(28) & !\u1|u0|u2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(28),
	datad => VCC,
	cin => \u1|u0|u2|Add0~55\,
	combout => \u1|u0|u2|Add0~56_combout\,
	cout => \u1|u0|u2|Add0~57\);

-- Location: FF_X15_Y26_N25
\u1|u0|u2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(28));

-- Location: LCCOMB_X15_Y26_N26
\u1|u0|u2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~58_combout\ = (\u1|u0|u2|count\(29) & (!\u1|u0|u2|Add0~57\)) # (!\u1|u0|u2|count\(29) & ((\u1|u0|u2|Add0~57\) # (GND)))
-- \u1|u0|u2|Add0~59\ = CARRY((!\u1|u0|u2|Add0~57\) # (!\u1|u0|u2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(29),
	datad => VCC,
	cin => \u1|u0|u2|Add0~57\,
	combout => \u1|u0|u2|Add0~58_combout\,
	cout => \u1|u0|u2|Add0~59\);

-- Location: FF_X15_Y26_N27
\u1|u0|u2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(29));

-- Location: LCCOMB_X15_Y26_N28
\u1|u0|u2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~60_combout\ = (\u1|u0|u2|count\(30) & (\u1|u0|u2|Add0~59\ $ (GND))) # (!\u1|u0|u2|count\(30) & (!\u1|u0|u2|Add0~59\ & VCC))
-- \u1|u0|u2|Add0~61\ = CARRY((\u1|u0|u2|count\(30) & !\u1|u0|u2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u2|count\(30),
	datad => VCC,
	cin => \u1|u0|u2|Add0~59\,
	combout => \u1|u0|u2|Add0~60_combout\,
	cout => \u1|u0|u2|Add0~61\);

-- Location: FF_X15_Y26_N29
\u1|u0|u2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(30));

-- Location: LCCOMB_X15_Y26_N30
\u1|u0|u2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Add0~62_combout\ = \u1|u0|u2|count\(31) $ (\u1|u0|u2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(31),
	cin => \u1|u0|u2|Add0~61\,
	combout => \u1|u0|u2|Add0~62_combout\);

-- Location: FF_X15_Y26_N31
\u1|u0|u2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|count\(31));

-- Location: LCCOMB_X16_Y26_N12
\u1|u0|u2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~8_combout\ = (!\u1|u0|u2|count\(28) & (!\u1|u0|u2|count\(30) & (!\u1|u0|u2|count\(29) & !\u1|u0|u2|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(28),
	datab => \u1|u0|u2|count\(30),
	datac => \u1|u0|u2|count\(29),
	datad => \u1|u0|u2|count\(31),
	combout => \u1|u0|u2|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y26_N14
\u1|u0|u2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~9_combout\ = (\u1|u0|u2|Equal0~7_combout\ & (!\u1|u0|u2|count\(26) & (!\u1|u0|u2|count\(27) & \u1|u0|u2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|Equal0~7_combout\,
	datab => \u1|u0|u2|count\(26),
	datac => \u1|u0|u2|count\(27),
	datad => \u1|u0|u2|Equal0~8_combout\,
	combout => \u1|u0|u2|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y26_N0
\u1|u0|u2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~5_combout\ = (!\u1|u0|u2|count\(19) & (\u1|u0|u2|count\(16) & (!\u1|u0|u2|count\(18) & !\u1|u0|u2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(19),
	datab => \u1|u0|u2|count\(16),
	datac => \u1|u0|u2|count\(18),
	datad => \u1|u0|u2|count\(17),
	combout => \u1|u0|u2|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y26_N0
\u1|u0|u2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~6_combout\ = (!\u1|u0|u2|count\(20) & (!\u1|u0|u2|count\(22) & (!\u1|u0|u2|count\(21) & !\u1|u0|u2|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(20),
	datab => \u1|u0|u2|count\(22),
	datac => \u1|u0|u2|count\(21),
	datad => \u1|u0|u2|count\(23),
	combout => \u1|u0|u2|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y27_N18
\u1|u0|u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~1_combout\ = (!\u1|u0|u2|count\(4) & (\u1|u0|u2|count\(6) & (!\u1|u0|u2|count\(5) & !\u1|u0|u2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(4),
	datab => \u1|u0|u2|count\(6),
	datac => \u1|u0|u2|count\(5),
	datad => \u1|u0|u2|count\(7),
	combout => \u1|u0|u2|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y27_N14
\u1|u0|u2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~2_combout\ = (\u1|u0|u2|count\(11) & (!\u1|u0|u2|count\(10) & (!\u1|u0|u2|count\(8) & !\u1|u0|u2|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(11),
	datab => \u1|u0|u2|count\(10),
	datac => \u1|u0|u2|count\(8),
	datad => \u1|u0|u2|count\(9),
	combout => \u1|u0|u2|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y27_N30
\u1|u0|u2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~3_combout\ = (\u1|u0|u2|count\(15) & (\u1|u0|u2|count\(13) & (\u1|u0|u2|count\(14) & !\u1|u0|u2|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(15),
	datab => \u1|u0|u2|count\(13),
	datac => \u1|u0|u2|count\(14),
	datad => \u1|u0|u2|count\(12),
	combout => \u1|u0|u2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y27_N6
\u1|u0|u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~0_combout\ = (!\u1|u0|u2|count\(1) & (!\u1|u0|u2|count\(2) & (\u1|u0|u2|count\(0) & \u1|u0|u2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|count\(1),
	datab => \u1|u0|u2|count\(2),
	datac => \u1|u0|u2|count\(0),
	datad => \u1|u0|u2|count\(3),
	combout => \u1|u0|u2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y27_N24
\u1|u0|u2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~4_combout\ = (\u1|u0|u2|Equal0~1_combout\ & (\u1|u0|u2|Equal0~2_combout\ & (\u1|u0|u2|Equal0~3_combout\ & \u1|u0|u2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|Equal0~1_combout\,
	datab => \u1|u0|u2|Equal0~2_combout\,
	datac => \u1|u0|u2|Equal0~3_combout\,
	datad => \u1|u0|u2|Equal0~0_combout\,
	combout => \u1|u0|u2|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y27_N28
\u1|u0|u2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|Equal0~10_combout\ = (\u1|u0|u2|Equal0~9_combout\ & (\u1|u0|u2|Equal0~5_combout\ & (\u1|u0|u2|Equal0~6_combout\ & \u1|u0|u2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u2|Equal0~9_combout\,
	datab => \u1|u0|u2|Equal0~5_combout\,
	datac => \u1|u0|u2|Equal0~6_combout\,
	datad => \u1|u0|u2|Equal0~4_combout\,
	combout => \u1|u0|u2|Equal0~10_combout\);

-- Location: LCCOMB_X16_Y27_N8
\u1|u0|u2|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u2|tmp~0_combout\ = \u1|u0|u2|tmp~q\ $ (\u1|u0|u2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u0|u2|tmp~q\,
	datad => \u1|u0|u2|Equal0~10_combout\,
	combout => \u1|u0|u2|tmp~0_combout\);

-- Location: FF_X16_Y27_N9
\u1|u0|u2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u0|u2|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u2|tmp~q\);

-- Location: CLKCTRL_G2
\u1|u0|u2|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|u0|u2|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|u0|u2|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N22
\KBD_KeyLin[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBD_KeyLin(3),
	o => \KBD_KeyLin[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\KBD_KeyLin[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBD_KeyLin(1),
	o => \KBD_KeyLin[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KBD_KeyLin[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBD_KeyLin(0),
	o => \KBD_KeyLin[0]~input_o\);

-- Location: LCCOMB_X45_Y29_N22
\u1|u0|u1|state.hold~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u1|state.hold~0_combout\ = (!\u1|u0|u1|state.state_bit_1~q\ & \u1|u0|u1|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u1|state.state_bit_1~q\,
	datad => \u1|u0|u1|state.state_bit_0~q\,
	combout => \u1|u0|u1|state.hold~0_combout\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X50_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X47_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X47_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X46_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X46_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X46_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X46_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X46_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X46_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X46_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X46_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X46_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X46_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X46_Y42_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X47_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X47_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X44_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X44_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X44_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X44_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X44_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X44_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X44_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X44_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X44_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X46_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X46_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X46_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X46_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X46_Y42_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X47_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X47_Y43_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X47_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X47_Y43_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X47_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X47_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X47_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X47_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X47_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X47_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: FF_X50_Y43_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X50_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X50_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X50_Y43_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X50_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X50_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: LCCOMB_X50_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: FF_X50_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X50_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X50_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X50_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X50_Y43_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X50_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X50_Y43_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X50_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X50_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X50_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X50_Y43_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X50_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X50_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X45_Y33_N8
\u1|u1|u1|incPut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|incPut~0_combout\ = (!\u1|u1|u0|state.state_bit_2~q\ & (!\u1|u1|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u1|incPut~0_combout\);

-- Location: LCCOMB_X46_Y33_N20
\u1|u1|u1|incPut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|incPut~1_combout\ = (\u1|u1|u1|incPut~0_combout\ & ((!\u1|u1|u1|Equal0~0_combout\) # (!\u1|u1|u1|u2|u1|Reg5_Out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incPut~0_combout\,
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	datad => \u1|u1|u1|Equal0~0_combout\,
	combout => \u1|u1|u1|incPut~1_combout\);

-- Location: LCCOMB_X46_Y33_N8
\u1|u1|u1|u2|u1|Reg5_Out[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u1|Reg5_Out[0]~5_combout\ = \u1|u1|u1|u2|u1|Reg5_Out\(0) $ (((\u1|u1|u1|incPut~1_combout\) # (\u1|u1|u1|incGet~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|u1|incPut~1_combout\,
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(0),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u2|u1|Reg5_Out[0]~5_combout\);

-- Location: IOIBUF_X51_Y54_N29
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X46_Y33_N9
\u1|u1|u1|u2|u1|Reg5_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u2|u1|Reg5_Out[0]~5_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u2|u1|Reg5_Out\(0));

-- Location: LCCOMB_X46_Y33_N30
\u1|u1|u1|u2|u1|Reg5_Out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u1|Reg5_Out[1]~4_combout\ = \u1|u1|u1|u2|u1|Reg5_Out\(1) $ (((\u1|u1|u1|incGet~1_combout\ & (!\u1|u1|u1|u2|u1|Reg5_Out\(0))) # (!\u1|u1|u1|incGet~1_combout\ & (\u1|u1|u1|u2|u1|Reg5_Out\(0) & \u1|u1|u1|incPut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incGet~1_combout\,
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(0),
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(1),
	datad => \u1|u1|u1|incPut~1_combout\,
	combout => \u1|u1|u1|u2|u1|Reg5_Out[1]~4_combout\);

-- Location: FF_X46_Y33_N31
\u1|u1|u1|u2|u1|Reg5_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u2|u1|Reg5_Out[1]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u2|u1|Reg5_Out\(1));

-- Location: LCCOMB_X46_Y33_N2
\u1|u1|u1|u2|u0|c1|FullAdder_Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\ = (\u1|u1|u1|incGet~1_combout\ & (!\u1|u1|u1|incPut~1_combout\ & ((\u1|u1|u1|u2|u1|Reg5_Out\(0)) # (\u1|u1|u1|u2|u1|Reg5_Out\(1))))) # (!\u1|u1|u1|incGet~1_combout\ & (\u1|u1|u1|u2|u1|Reg5_Out\(0) & 
-- (\u1|u1|u1|u2|u1|Reg5_Out\(1) & \u1|u1|u1|incPut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incGet~1_combout\,
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(0),
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(1),
	datad => \u1|u1|u1|incPut~1_combout\,
	combout => \u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\);

-- Location: LCCOMB_X46_Y33_N4
\u1|u1|u1|u2|u1|Reg5_Out[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u1|Reg5_Out[2]~3_combout\ = \u1|u1|u1|u2|u1|Reg5_Out\(2) $ (((\u1|u1|u1|incGet~1_combout\ & (!\u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\)) # (!\u1|u1|u1|incGet~1_combout\ & (\u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\ & 
-- \u1|u1|u1|incPut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incGet~1_combout\,
	datab => \u1|u1|u1|u2|u0|c1|FullAdder_Co~0_combout\,
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(2),
	datad => \u1|u1|u1|incPut~1_combout\,
	combout => \u1|u1|u1|u2|u1|Reg5_Out[2]~3_combout\);

-- Location: FF_X46_Y33_N5
\u1|u1|u1|u2|u1|Reg5_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u2|u1|Reg5_Out[2]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u2|u1|Reg5_Out\(2));

-- Location: LCCOMB_X46_Y33_N16
\u1|u1|u1|u2|u0|c2|FullAdder_Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\ = (\u1|u1|u1|u2|u1|Reg5_Out\(1) & ((\u1|u1|u1|incGet~1_combout\) # ((\u1|u1|u1|u2|u1|Reg5_Out\(2) & \u1|u1|u1|u2|u1|Reg5_Out\(0))))) # (!\u1|u1|u1|u2|u1|Reg5_Out\(1) & (\u1|u1|u1|incGet~1_combout\ & 
-- ((\u1|u1|u1|u2|u1|Reg5_Out\(2)) # (\u1|u1|u1|u2|u1|Reg5_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u2|u1|Reg5_Out\(1),
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(2),
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(0),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\);

-- Location: LCCOMB_X46_Y33_N22
\u1|u1|u1|u2|u0|c3|FullAdder_Co~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\ = (\u1|u1|u1|incGet~1_combout\ & (!\u1|u1|u1|incPut~1_combout\ & ((\u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\) # (\u1|u1|u1|u2|u1|Reg5_Out\(3))))) # (!\u1|u1|u1|incGet~1_combout\ & 
-- (\u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\ & (\u1|u1|u1|u2|u1|Reg5_Out\(3) & \u1|u1|u1|incPut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incGet~1_combout\,
	datab => \u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\,
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(3),
	datad => \u1|u1|u1|incPut~1_combout\,
	combout => \u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\);

-- Location: LCCOMB_X46_Y33_N0
\u1|u1|u1|u2|u1|Reg5_Out[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u1|Reg5_Out[4]~2_combout\ = \u1|u1|u1|u2|u1|Reg5_Out\(4) $ (((\u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\ & (\u1|u1|u1|incPut~1_combout\ & !\u1|u1|u1|incGet~1_combout\)) # (!\u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\ & 
-- ((\u1|u1|u1|incGet~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u2|u0|c3|FullAdder_Co~2_combout\,
	datab => \u1|u1|u1|incPut~1_combout\,
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u2|u1|Reg5_Out[4]~2_combout\);

-- Location: FF_X46_Y33_N1
\u1|u1|u1|u2|u1|Reg5_Out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u2|u1|Reg5_Out[4]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u2|u1|Reg5_Out\(4));

-- Location: LCCOMB_X46_Y34_N18
\u1|u1|u1|incGet~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|incGet~0_combout\ = (\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u1|incGet~0_combout\);

-- Location: LCCOMB_X46_Y33_N6
\u1|u1|u1|incGet~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|incGet~1_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (\u1|u1|u1|incGet~0_combout\ & ((\u1|u1|u1|u2|u1|Reg5_Out\(4)) # (!\u1|u1|u1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|Equal0~0_combout\,
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u1|incGet~0_combout\,
	combout => \u1|u1|u1|incGet~1_combout\);

-- Location: LCCOMB_X46_Y33_N26
\u1|u1|u1|u2|u1|Reg5_Out[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u1|Reg5_Out[3]~6_combout\ = \u1|u1|u1|u2|u1|Reg5_Out\(3) $ (((\u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\ & ((\u1|u1|u1|incPut~1_combout\))) # (!\u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\ & (\u1|u1|u1|incGet~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incGet~1_combout\,
	datab => \u1|u1|u1|u2|u0|c2|FullAdder_Co~0_combout\,
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(3),
	datad => \u1|u1|u1|incPut~1_combout\,
	combout => \u1|u1|u1|u2|u1|Reg5_Out[3]~6_combout\);

-- Location: FF_X46_Y33_N27
\u1|u1|u1|u2|u1|Reg5_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u2|u1|Reg5_Out[3]~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u2|u1|Reg5_Out\(3));

-- Location: LCCOMB_X46_Y33_N10
\u1|u1|u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|Equal0~0_combout\ = (!\u1|u1|u1|u2|u1|Reg5_Out\(3) & (!\u1|u1|u1|u2|u1|Reg5_Out\(2) & (!\u1|u1|u1|u2|u1|Reg5_Out\(0) & !\u1|u1|u1|u2|u1|Reg5_Out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u2|u1|Reg5_Out\(3),
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(2),
	datac => \u1|u1|u1|u2|u1|Reg5_Out\(0),
	datad => \u1|u1|u1|u2|u1|Reg5_Out\(1),
	combout => \u1|u1|u1|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y34_N30
\u1|u1|u0|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_0~0_combout\ = (\u1|u1|u1|Equal0~0_combout\ & ((\u1|u1|u1|u2|u1|Reg5_Out\(4) & ((\u1|u2|u0|state.state_bit_0~q\))) # (!\u1|u1|u1|u2|u1|Reg5_Out\(4) & (!\u1|u0|u1|state.hold~0_combout\)))) # (!\u1|u1|u1|Equal0~0_combout\ & 
-- (!\u1|u0|u1|state.hold~0_combout\ & (\u1|u2|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u1|state.hold~0_combout\,
	datab => \u1|u2|u0|state.state_bit_0~q\,
	datac => \u1|u1|u1|Equal0~0_combout\,
	datad => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	combout => \u1|u1|u0|state.state_bit_0~0_combout\);

-- Location: LCCOMB_X46_Y34_N14
\u1|u1|u0|state.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_0~1_combout\ = (!\u1|u1|u0|state.state_bit_1~q\ & ((\u1|u1|u0|state.state_bit_0~q\) # ((!\u1|u1|u0|state.state_bit_0~0_combout\ & !\u1|u1|u0|state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~0_combout\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u0|state.state_bit_0~1_combout\);

-- Location: FF_X46_Y34_N15
\u1|u1|u0|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u0|state.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u0|state.state_bit_0~q\);

-- Location: LCCOMB_X46_Y34_N12
\u1|u1|u0|state.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_1~1_combout\ = (!\u1|u1|u0|state.state_bit_1~q\ & (((!\u1|u2|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_2~q\)) # (!\u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u0|state.state_bit_0~q\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u0|state.state_bit_1~1_combout\);

-- Location: LCCOMB_X46_Y34_N20
\u1|u1|u0|state.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_1~2_combout\ = (!\u1|u1|u0|state.state_bit_1~1_combout\ & (((!\u1|u1|u0|state.state_bit_0~q\ & \u1|u0|u1|state.hold~0_combout\)) # (!\u1|u1|u1|incGet~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_1~1_combout\,
	datab => \u1|u1|u1|incGet~0_combout\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u0|u1|state.hold~0_combout\,
	combout => \u1|u1|u0|state.state_bit_1~2_combout\);

-- Location: FF_X46_Y34_N21
\u1|u1|u0|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u0|state.state_bit_1~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u0|state.state_bit_1~q\);

-- Location: LCCOMB_X45_Y30_N26
\u1|u2|u0|BufferControl_Wreg\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u2|u0|BufferControl_Wreg~combout\ = LCELL((\u1|u1|u0|state.state_bit_2~q\ & (!\u1|u2|u0|state.state_bit_0~q\ & !\u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u2|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u2|u0|BufferControl_Wreg~combout\);

-- Location: CLKCTRL_G16
\u1|u2|u0|BufferControl_Wreg~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|u2|u0|BufferControl_Wreg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y33_N14
\u1|u1|u1|u1|u1|Reg4_Out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|Reg4_Out[0]~1_combout\ = \u1|u1|u1|u1|u1|Reg4_Out\(0) $ (((\u1|u1|u1|incPut~0_combout\ & ((!\u1|u1|u1|Equal0~0_combout\) # (!\u1|u1|u1|u2|u1|Reg5_Out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|incPut~0_combout\,
	datab => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	datac => \u1|u1|u1|u1|u1|Reg4_Out\(0),
	datad => \u1|u1|u1|Equal0~0_combout\,
	combout => \u1|u1|u1|u1|u1|Reg4_Out[0]~1_combout\);

-- Location: FF_X46_Y33_N15
\u1|u1|u1|u1|u1|Reg4_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u1|u1|Reg4_Out[0]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u1|u1|Reg4_Out\(0));

-- Location: LCCOMB_X46_Y33_N12
\u1|u1|u1|u1|u1|Reg4_Out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|Reg4_Out[1]~0_combout\ = \u1|u1|u1|u1|u1|Reg4_Out\(1) $ (((\u1|u1|u1|incPut~1_combout\ & \u1|u1|u1|u1|u1|Reg4_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|u1|incPut~1_combout\,
	datac => \u1|u1|u1|u1|u1|Reg4_Out\(1),
	datad => \u1|u1|u1|u1|u1|Reg4_Out\(0),
	combout => \u1|u1|u1|u1|u1|Reg4_Out[1]~0_combout\);

-- Location: FF_X46_Y33_N13
\u1|u1|u1|u1|u1|Reg4_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u1|u1|Reg4_Out[1]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u1|u1|Reg4_Out\(1));

-- Location: LCCOMB_X46_Y33_N24
\u1|u1|u1|u1|u1|Reg4_Out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|Reg4_Out[2]~4_combout\ = \u1|u1|u1|u1|u1|Reg4_Out\(2) $ (((\u1|u1|u1|u1|u1|Reg4_Out\(0) & (\u1|u1|u1|incPut~1_combout\ & \u1|u1|u1|u1|u1|Reg4_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u1|u1|Reg4_Out\(0),
	datab => \u1|u1|u1|incPut~1_combout\,
	datac => \u1|u1|u1|u1|u1|Reg4_Out\(2),
	datad => \u1|u1|u1|u1|u1|Reg4_Out\(1),
	combout => \u1|u1|u1|u1|u1|Reg4_Out[2]~4_combout\);

-- Location: FF_X46_Y33_N25
\u1|u1|u1|u1|u1|Reg4_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u1|u1|Reg4_Out[2]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u1|u1|Reg4_Out\(2));

-- Location: LCCOMB_X46_Y33_N28
\u1|u1|u1|u1|u1|Reg4_Out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|Reg4_Out[3]~2_combout\ = (\u1|u1|u1|u1|u1|Reg4_Out\(0) & (\u1|u1|u1|incPut~1_combout\ & (\u1|u1|u1|u1|u1|Reg4_Out\(2) & \u1|u1|u1|u1|u1|Reg4_Out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u1|u1|Reg4_Out\(0),
	datab => \u1|u1|u1|incPut~1_combout\,
	datac => \u1|u1|u1|u1|u1|Reg4_Out\(2),
	datad => \u1|u1|u1|u1|u1|Reg4_Out\(1),
	combout => \u1|u1|u1|u1|u1|Reg4_Out[3]~2_combout\);

-- Location: LCCOMB_X45_Y33_N12
\u1|u1|u1|u1|u1|Reg4_Out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|Reg4_Out[3]~3_combout\ = \u1|u1|u1|u1|u1|Reg4_Out\(3) $ (\u1|u1|u1|u1|u1|Reg4_Out[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|u1|u1|Reg4_Out\(3),
	datad => \u1|u1|u1|u1|u1|Reg4_Out[3]~2_combout\,
	combout => \u1|u1|u1|u1|u1|Reg4_Out[3]~3_combout\);

-- Location: FF_X45_Y33_N13
\u1|u1|u1|u1|u1|Reg4_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u1|u1|Reg4_Out[3]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u1|u1|Reg4_Out\(3));

-- Location: LCCOMB_X45_Y33_N30
\u1|u1|u1|u0|u1|Reg4_Out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u0|u1|Reg4_Out[0]~1_combout\ = \u1|u1|u1|u0|u1|Reg4_Out\(0) $ (\u1|u1|u1|incGet~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|u0|u1|Reg4_Out\(0),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u0|u1|Reg4_Out[0]~1_combout\);

-- Location: FF_X45_Y33_N31
\u1|u1|u1|u0|u1|Reg4_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u0|u1|Reg4_Out[0]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u0|u1|Reg4_Out\(0));

-- Location: LCCOMB_X45_Y33_N10
\u1|u1|u1|u0|u1|Reg4_Out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u0|u1|Reg4_Out[1]~0_combout\ = \u1|u1|u1|u0|u1|Reg4_Out\(1) $ (((\u1|u1|u1|u0|u1|Reg4_Out\(0) & \u1|u1|u1|incGet~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u0|u1|Reg4_Out\(0),
	datac => \u1|u1|u1|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u0|u1|Reg4_Out[1]~0_combout\);

-- Location: FF_X45_Y33_N11
\u1|u1|u1|u0|u1|Reg4_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u0|u1|Reg4_Out[1]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u0|u1|Reg4_Out\(1));

-- Location: LCCOMB_X45_Y33_N24
\u1|u1|u1|u0|u1|Reg4_Out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u0|u1|Reg4_Out[2]~4_combout\ = \u1|u1|u1|u0|u1|Reg4_Out\(2) $ (((\u1|u1|u1|u0|u1|Reg4_Out\(1) & (\u1|u1|u1|u0|u1|Reg4_Out\(0) & \u1|u1|u1|incGet~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u0|u1|Reg4_Out\(1),
	datab => \u1|u1|u1|u0|u1|Reg4_Out\(0),
	datac => \u1|u1|u1|u0|u1|Reg4_Out\(2),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u0|u1|Reg4_Out[2]~4_combout\);

-- Location: FF_X45_Y33_N25
\u1|u1|u1|u0|u1|Reg4_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u0|u1|Reg4_Out[2]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u0|u1|Reg4_Out\(2));

-- Location: LCCOMB_X46_Y33_N18
\u1|u1|u1|u0|u1|Reg4_Out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u0|u1|Reg4_Out[3]~2_combout\ = (!\u1|u1|u1|u0|u1|Reg4_Out\(1)) # (!\u1|u1|u1|u0|u1|Reg4_Out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|u1|u0|u1|Reg4_Out\(2),
	datad => \u1|u1|u1|u0|u1|Reg4_Out\(1),
	combout => \u1|u1|u1|u0|u1|Reg4_Out[3]~2_combout\);

-- Location: LCCOMB_X45_Y33_N18
\u1|u1|u1|u0|u1|Reg4_Out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u0|u1|Reg4_Out[3]~3_combout\ = \u1|u1|u1|u0|u1|Reg4_Out\(3) $ (((\u1|u1|u1|u0|u1|Reg4_Out\(0) & (!\u1|u1|u1|u0|u1|Reg4_Out[3]~2_combout\ & \u1|u1|u1|incGet~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u0|u1|Reg4_Out\(0),
	datab => \u1|u1|u1|u0|u1|Reg4_Out[3]~2_combout\,
	datac => \u1|u1|u1|u0|u1|Reg4_Out\(3),
	datad => \u1|u1|u1|incGet~1_combout\,
	combout => \u1|u1|u1|u0|u1|Reg4_Out[3]~3_combout\);

-- Location: FF_X45_Y33_N19
\u1|u1|u1|u0|u1|Reg4_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u1|u0|u1|Reg4_Out[3]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u1|u0|u1|Reg4_Out\(3));

-- Location: LCCOMB_X45_Y33_N6
\u1|u1|u1|u3|Mux4_MAC_Out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & ((\u1|u1|u0|state.state_bit_2~q\ & ((\u1|u1|u1|u0|u1|Reg4_Out\(3)))) # (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u1|u1|u1|Reg4_Out\(3))))) # (!\u1|u1|u0|state.state_bit_0~q\ & 
-- (((\u1|u1|u1|u0|u1|Reg4_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u1|u1|Reg4_Out\(3),
	datab => \u1|u1|u1|u0|u1|Reg4_Out\(3),
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_2~q\,
	combout => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\);

-- Location: LCCOMB_X45_Y33_N20
\u1|u1|u1|u3|Mux4_MAC_Out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & ((\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u1|u0|u1|Reg4_Out\(1))) # (!\u1|u1|u0|state.state_bit_2~q\ & ((\u1|u1|u1|u1|u1|Reg4_Out\(1)))))) # (!\u1|u1|u0|state.state_bit_0~q\ & 
-- (\u1|u1|u1|u0|u1|Reg4_Out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u0|u1|Reg4_Out\(1),
	datab => \u1|u1|u1|u1|u1|Reg4_Out\(1),
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_2~q\,
	combout => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\);

-- Location: LCCOMB_X45_Y33_N26
\u1|u1|u1|u3|Mux4_MAC_Out[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ = (\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u1|u0|u1|Reg4_Out\(2))) # (!\u1|u1|u0|state.state_bit_2~q\ & ((\u1|u1|u0|state.state_bit_0~q\ & ((\u1|u1|u1|u1|u1|Reg4_Out\(2)))) # (!\u1|u1|u0|state.state_bit_0~q\ & 
-- (\u1|u1|u1|u0|u1|Reg4_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datab => \u1|u1|u1|u0|u1|Reg4_Out\(2),
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u1|u1|u1|Reg4_Out\(2),
	combout => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\);

-- Location: LCCOMB_X45_Y33_N16
\u1|u1|u1|u3|Mux4_MAC_Out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & ((\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u1|u0|u1|Reg4_Out\(0))) # (!\u1|u1|u0|state.state_bit_2~q\ & ((\u1|u1|u1|u1|u1|Reg4_Out\(0)))))) # (!\u1|u1|u0|state.state_bit_0~q\ & 
-- (\u1|u1|u1|u0|u1|Reg4_Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u0|u1|Reg4_Out\(0),
	datab => \u1|u1|u1|u1|u1|Reg4_Out\(0),
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_2~q\,
	combout => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\);

-- Location: LCCOMB_X45_Y33_N0
\u1|u1|u2|ram~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~109_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~109_combout\);

-- Location: LCCOMB_X45_Y33_N2
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~109_combout\ & (\u1|u1|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datab => \u1|u1|u2|ram~109_combout\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G5
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X44_Y30_N12
\u1|u1|u2|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\u1|u1|u2|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~5clkctrl_outclk\,
	datad => \u1|u1|u2|ram~26_combout\,
	combout => \u1|u1|u2|ram~26_combout\);

-- Location: LCCOMB_X45_Y32_N18
\u1|u1|u2|ram~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~111_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~111_combout\);

-- Location: LCCOMB_X44_Y32_N16
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (\u1|u1|u2|ram~111_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~q\,
	datab => \u1|u1|u2|ram~111_combout\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G4
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X44_Y30_N0
\u1|u1|u2|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\u1|u1|u2|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~7clkctrl_outclk\,
	datad => \u1|u1|u2|ram~30_combout\,
	combout => \u1|u1|u2|ram~30_combout\);

-- Location: LCCOMB_X44_Y32_N12
\u1|u1|u2|ram~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~110_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~110_combout\);

-- Location: LCCOMB_X44_Y32_N14
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\u1|u1|u2|ram~110_combout\ & (\u1|u1|u0|state.state_bit_1~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~110_combout\,
	datab => \u1|u1|u0|state.state_bit_1~q\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G15
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X44_Y30_N6
\u1|u1|u2|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\u1|u1|u2|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datad => \u1|u1|u2|ram~18_combout\,
	combout => \u1|u1|u2|ram~18_combout\);

-- Location: LCCOMB_X43_Y31_N6
\u1|u1|u2|ram~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~108_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~108_combout\);

-- Location: LCCOMB_X43_Y31_N8
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\u1|u1|u2|ram~108_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u0|state.state_bit_1~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~108_combout\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_1~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G1
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N16
\u1|u1|u2|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\u1|u1|u2|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datab => \rtl~4clkctrl_outclk\,
	datad => \u1|u1|u2|ram~22_combout\,
	combout => \u1|u1|u2|ram~22_combout\);

-- Location: LCCOMB_X44_Y30_N24
\u1|u1|u2|ram~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~84_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u2|ram~22_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u2|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~18_combout\,
	datab => \u1|u1|u2|ram~22_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~84_combout\);

-- Location: LCCOMB_X44_Y30_N2
\u1|u1|u2|ram~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~85_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u2|ram~84_combout\ & ((\u1|u1|u2|ram~30_combout\))) # (!\u1|u1|u2|ram~84_combout\ & (\u1|u1|u2|ram~26_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & 
-- (((\u1|u1|u2|ram~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~26_combout\,
	datab => \u1|u1|u2|ram~30_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u2|ram~84_combout\,
	combout => \u1|u1|u2|ram~85_combout\);

-- Location: LCCOMB_X44_Y32_N18
\u1|u1|u2|ram~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~119_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~119_combout\);

-- Location: LCCOMB_X44_Y32_N28
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (\u1|u1|u2|ram~119_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~q\,
	datab => \u1|u1|u2|ram~119_combout\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G12
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N12
\u1|u1|u2|ram~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~62_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\u1|u1|u2|ram~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~15clkctrl_outclk\,
	datad => \u1|u1|u2|ram~62_combout\,
	combout => \u1|u1|u2|ram~62_combout\);

-- Location: LCCOMB_X44_Y33_N24
\u1|u1|u2|ram~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~117_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~117_combout\);

-- Location: LCCOMB_X44_Y33_N2
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~117_combout\ & (\u1|u1|u0|state.state_bit_1~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datab => \u1|u1|u2|ram~117_combout\,
	datac => \u1|u1|u0|state.state_bit_1~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G11
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N10
\u1|u1|u2|ram~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~58_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\u1|u1|u2|ram~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~13clkctrl_outclk\,
	datad => \u1|u1|u2|ram~58_combout\,
	combout => \u1|u1|u2|ram~58_combout\);

-- Location: LCCOMB_X44_Y32_N22
\u1|u1|u2|ram~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~118_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~118_combout\);

-- Location: LCCOMB_X44_Y32_N0
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~118_combout\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~q\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u2|ram~118_combout\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G3
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X41_Y33_N6
\u1|u1|u2|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~50_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\u1|u1|u2|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~14clkctrl_outclk\,
	datad => \u1|u1|u2|ram~50_combout\,
	combout => \u1|u1|u2|ram~50_combout\);

-- Location: LCCOMB_X44_Y32_N26
\u1|u1|u2|ram~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~116_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~116_combout\);

-- Location: LCCOMB_X44_Y32_N4
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~116_combout\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~q\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u2|ram~116_combout\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G18
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X41_Y33_N12
\u1|u1|u2|ram~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~54_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\u1|u1|u2|ram~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~12clkctrl_outclk\,
	datad => \u1|u1|u2|ram~54_combout\,
	combout => \u1|u1|u2|ram~54_combout\);

-- Location: LCCOMB_X41_Y33_N8
\u1|u1|u2|ram~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~91_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u2|ram~54_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u2|ram~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~50_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u2|ram~54_combout\,
	combout => \u1|u1|u2|ram~91_combout\);

-- Location: LCCOMB_X42_Y33_N0
\u1|u1|u2|ram~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~92_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u2|ram~91_combout\ & (\u1|u1|u2|ram~62_combout\)) # (!\u1|u1|u2|ram~91_combout\ & ((\u1|u1|u2|ram~58_combout\))))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & 
-- (((\u1|u1|u2|ram~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~62_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u2|ram~58_combout\,
	datad => \u1|u1|u2|ram~91_combout\,
	combout => \u1|u1|u2|ram~92_combout\);

-- Location: LCCOMB_X45_Y33_N28
\u1|u1|u2|ram~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~114_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~114_combout\);

-- Location: LCCOMB_X45_Y33_N14
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~114_combout\ & (\u1|u1|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datab => \u1|u1|u2|ram~114_combout\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G6
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N6
\u1|u1|u2|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~2_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\u1|u1|u2|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~10clkctrl_outclk\,
	datad => \u1|u1|u2|ram~2_combout\,
	combout => \u1|u1|u2|ram~2_combout\);

-- Location: LCCOMB_X43_Y31_N10
\u1|u1|u2|ram~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~112_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~112_combout\);

-- Location: LCCOMB_X43_Y31_N28
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\u1|u1|u2|ram~112_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u0|state.state_bit_1~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~112_combout\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_1~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~8_combout\);

-- Location: LCCOMB_X45_Y34_N20
\u1|u1|u2|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~10_combout\ = (\rtl~8_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!\rtl~8_combout\ & ((\u1|u1|u2|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~8_combout\,
	datad => \u1|u1|u2|ram~10_combout\,
	combout => \u1|u1|u2|ram~10_combout\);

-- Location: LCCOMB_X45_Y34_N4
\u1|u1|u2|ram~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~88_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\) # (\u1|u1|u2|ram~10_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u2|ram~2_combout\ & 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~2_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u2|ram~10_combout\,
	combout => \u1|u1|u2|ram~88_combout\);

-- Location: LCCOMB_X44_Y32_N10
\u1|u1|u2|ram~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~113_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~113_combout\);

-- Location: LCCOMB_X44_Y32_N20
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\u1|u1|u2|ram~113_combout\ & (\u1|u1|u0|state.state_bit_1~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~113_combout\,
	datab => \u1|u1|u0|state.state_bit_1~q\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~9_combout\);

-- Location: LCCOMB_X45_Y34_N18
\u1|u1|u2|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~6_combout\ = (\rtl~9_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!\rtl~9_combout\ & ((\u1|u1|u2|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~9_combout\,
	datad => \u1|u1|u2|ram~6_combout\,
	combout => \u1|u1|u2|ram~6_combout\);

-- Location: LCCOMB_X44_Y32_N30
\u1|u1|u2|ram~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~115_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~115_combout\);

-- Location: LCCOMB_X44_Y32_N8
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\u1|u1|u2|ram~115_combout\ & (\u1|u1|u0|state.state_bit_1~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~115_combout\,
	datab => \u1|u1|u0|state.state_bit_1~q\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G17
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N0
\u1|u1|u2|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~14_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\u1|u1|u2|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~11clkctrl_outclk\,
	datad => \u1|u1|u2|ram~14_combout\,
	combout => \u1|u1|u2|ram~14_combout\);

-- Location: LCCOMB_X45_Y34_N30
\u1|u1|u2|ram~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~89_combout\ = (\u1|u1|u2|ram~88_combout\ & (((\u1|u1|u2|ram~14_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u2|ram~88_combout\ & (\u1|u1|u2|ram~6_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~88_combout\,
	datab => \u1|u1|u2|ram~6_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u2|ram~14_combout\,
	combout => \u1|u1|u2|ram~89_combout\);

-- Location: LCCOMB_X45_Y32_N24
\u1|u1|u2|ram~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~105_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~105_combout\);

-- Location: LCCOMB_X44_Y32_N2
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (\u1|u1|u2|ram~105_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_0~q\,
	datab => \u1|u1|u2|ram~105_combout\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G8
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X40_Y30_N6
\u1|u1|u2|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~38_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\u1|u1|u2|ram~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~1clkctrl_outclk\,
	datad => \u1|u1|u2|ram~38_combout\,
	combout => \u1|u1|u2|ram~38_combout\);

-- Location: LCCOMB_X43_Y31_N26
\u1|u1|u2|ram~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~107_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~107_combout\);

-- Location: LCCOMB_X43_Y31_N4
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\u1|u1|u0|state.state_bit_1~q\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~107_combout\ & \u1|u1|u0|state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_1~q\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u2|ram~107_combout\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G0
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X40_Y30_N2
\u1|u1|u2|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~46_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\u1|u1|u2|ram~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datad => \u1|u1|u2|ram~46_combout\,
	combout => \u1|u1|u2|ram~46_combout\);

-- Location: LCCOMB_X45_Y34_N14
\u1|u1|u2|ram~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~106_combout\ = (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~106_combout\);

-- Location: LCCOMB_X46_Y34_N4
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\u1|u1|u2|ram~106_combout\ & (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~106_combout\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G7
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X40_Y30_N24
\u1|u1|u2|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~34_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\u1|u1|u2|ram~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \rtl~2clkctrl_outclk\,
	datad => \u1|u1|u2|ram~34_combout\,
	combout => \u1|u1|u2|ram~34_combout\);

-- Location: LCCOMB_X45_Y33_N4
\u1|u1|u2|ram~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~104_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & !\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~104_combout\);

-- Location: LCCOMB_X45_Y33_N22
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\u1|u1|u0|state.state_bit_2~q\ & (\u1|u1|u2|ram~104_combout\ & (\u1|u1|u0|state.state_bit_0~q\ & \u1|u1|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~q\,
	datab => \u1|u1|u2|ram~104_combout\,
	datac => \u1|u1|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G9
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X41_Y33_N2
\u1|u1|u2|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~42_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(2))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\u1|u1|u2|ram~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datad => \u1|u1|u2|ram~42_combout\,
	combout => \u1|u1|u2|ram~42_combout\);

-- Location: LCCOMB_X41_Y30_N12
\u1|u1|u2|ram~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~86_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u2|ram~42_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u2|ram~34_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u2|ram~34_combout\,
	datac => \u1|u1|u2|ram~42_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~86_combout\);

-- Location: LCCOMB_X40_Y30_N12
\u1|u1|u2|ram~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~87_combout\ = (\u1|u1|u2|ram~86_combout\ & (((\u1|u1|u2|ram~46_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u2|ram~86_combout\ & (\u1|u1|u2|ram~38_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~38_combout\,
	datab => \u1|u1|u2|ram~46_combout\,
	datac => \u1|u1|u2|ram~86_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~87_combout\);

-- Location: LCCOMB_X45_Y34_N24
\u1|u1|u2|ram~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~90_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u2|ram~87_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u2|ram~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datac => \u1|u1|u2|ram~89_combout\,
	datad => \u1|u1|u2|ram~87_combout\,
	combout => \u1|u1|u2|ram~90_combout\);

-- Location: LCCOMB_X45_Y34_N8
\u1|u1|u2|ram~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~93_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u2|ram~90_combout\ & ((\u1|u1|u2|ram~92_combout\))) # (!\u1|u1|u2|ram~90_combout\ & (\u1|u1|u2|ram~85_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & 
-- (((\u1|u1|u2|ram~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~85_combout\,
	datab => \u1|u1|u2|ram~92_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u2|ram~90_combout\,
	combout => \u1|u1|u2|ram~93_combout\);

-- Location: FF_X45_Y34_N9
\u1|u2|u1|Reg4_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\,
	d => \u1|u1|u2|ram~93_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u1|Reg4_Out\(2));

-- Location: LCCOMB_X44_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X41_Y30_N6
\u1|u1|u2|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~45_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\u1|u1|u2|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u2|ram~45_combout\,
	combout => \u1|u1|u2|ram~45_combout\);

-- Location: LCCOMB_X41_Y32_N12
\u1|u1|u2|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~13_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\u1|u1|u2|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datab => \rtl~11clkctrl_outclk\,
	datad => \u1|u1|u2|ram~13_combout\,
	combout => \u1|u1|u2|ram~13_combout\);

-- Location: LCCOMB_X41_Y32_N10
\u1|u1|u2|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\u1|u1|u2|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~7clkctrl_outclk\,
	datad => \u1|u1|u2|ram~29_combout\,
	combout => \u1|u1|u2|ram~29_combout\);

-- Location: LCCOMB_X41_Y32_N8
\u1|u1|u2|ram~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~81_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (((\u1|u1|u2|ram~29_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u2|ram~13_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~13_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datac => \u1|u1|u2|ram~29_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~81_combout\);

-- Location: LCCOMB_X41_Y32_N6
\u1|u1|u2|ram~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~61_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\u1|u1|u2|ram~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~15clkctrl_outclk\,
	datad => \u1|u1|u2|ram~61_combout\,
	combout => \u1|u1|u2|ram~61_combout\);

-- Location: LCCOMB_X41_Y30_N26
\u1|u1|u2|ram~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~82_combout\ = (\u1|u1|u2|ram~81_combout\ & (((\u1|u1|u2|ram~61_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u2|ram~81_combout\ & (\u1|u1|u2|ram~45_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~45_combout\,
	datab => \u1|u1|u2|ram~81_combout\,
	datac => \u1|u1|u2|ram~61_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~82_combout\);

-- Location: LCCOMB_X41_Y30_N28
\u1|u1|u2|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~5_combout\ = (\rtl~9_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!\rtl~9_combout\ & ((\u1|u1|u2|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u2|ram~5_combout\,
	combout => \u1|u1|u2|ram~5_combout\);

-- Location: LCCOMB_X41_Y30_N18
\u1|u1|u2|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\u1|u1|u2|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~4clkctrl_outclk\,
	datad => \u1|u1|u2|ram~21_combout\,
	combout => \u1|u1|u2|ram~21_combout\);

-- Location: LCCOMB_X41_Y30_N10
\u1|u1|u2|ram~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~76_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u2|ram~21_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u2|ram~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datab => \u1|u1|u2|ram~5_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u2|ram~21_combout\,
	combout => \u1|u1|u2|ram~76_combout\);

-- Location: LCCOMB_X41_Y30_N0
\u1|u1|u2|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~37_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\u1|u1|u2|ram~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~1clkctrl_outclk\,
	datad => \u1|u1|u2|ram~37_combout\,
	combout => \u1|u1|u2|ram~37_combout\);

-- Location: LCCOMB_X45_Y29_N28
\u1|u1|u2|ram~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~53_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\u1|u1|u2|ram~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~12clkctrl_outclk\,
	datad => \u1|u1|u2|ram~53_combout\,
	combout => \u1|u1|u2|ram~53_combout\);

-- Location: LCCOMB_X41_Y30_N20
\u1|u1|u2|ram~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~77_combout\ = (\u1|u1|u2|ram~76_combout\ & (((\u1|u1|u2|ram~53_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u2|ram~76_combout\ & (\u1|u1|u2|ram~37_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~76_combout\,
	datab => \u1|u1|u2|ram~37_combout\,
	datac => \u1|u1|u2|ram~53_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~77_combout\);

-- Location: LCCOMB_X40_Y31_N0
\u1|u1|u2|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\u1|u1|u2|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~6clkctrl_outclk\,
	datad => \u1|u1|u2|ram~17_combout\,
	combout => \u1|u1|u2|ram~17_combout\);

-- Location: LCCOMB_X45_Y30_N28
\u1|u1|u2|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~49_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\u1|u1|u2|ram~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~14clkctrl_outclk\,
	datad => \u1|u1|u2|ram~49_combout\,
	combout => \u1|u1|u2|ram~49_combout\);

-- Location: LCCOMB_X40_Y31_N12
\u1|u1|u2|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~1_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\u1|u1|u2|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~10clkctrl_outclk\,
	datad => \u1|u1|u2|ram~1_combout\,
	combout => \u1|u1|u2|ram~1_combout\);

-- Location: LCCOMB_X40_Y31_N10
\u1|u1|u2|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~33_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\u1|u1|u2|ram~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u2|ram~33_combout\,
	combout => \u1|u1|u2|ram~33_combout\);

-- Location: LCCOMB_X41_Y31_N24
\u1|u1|u2|ram~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~78_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u2|ram~33_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u2|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~1_combout\,
	datab => \u1|u1|u2|ram~33_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~78_combout\);

-- Location: LCCOMB_X41_Y30_N30
\u1|u1|u2|ram~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~79_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u2|ram~78_combout\ & ((\u1|u1|u2|ram~49_combout\))) # (!\u1|u1|u2|ram~78_combout\ & (\u1|u1|u2|ram~17_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & 
-- (((\u1|u1|u2|ram~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u2|ram~17_combout\,
	datac => \u1|u1|u2|ram~49_combout\,
	datad => \u1|u1|u2|ram~78_combout\,
	combout => \u1|u1|u2|ram~79_combout\);

-- Location: LCCOMB_X41_Y30_N24
\u1|u1|u2|ram~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~80_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u2|ram~77_combout\)) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u2|ram~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u2|ram~77_combout\,
	datac => \u1|u1|u2|ram~79_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~80_combout\);

-- Location: LCCOMB_X44_Y31_N12
\u1|u1|u2|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\u1|u1|u2|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~5clkctrl_outclk\,
	datad => \u1|u1|u2|ram~25_combout\,
	combout => \u1|u1|u2|ram~25_combout\);

-- Location: LCCOMB_X44_Y31_N6
\u1|u1|u2|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~41_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\u1|u1|u2|ram~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datac => \rtl~0clkctrl_outclk\,
	datad => \u1|u1|u2|ram~41_combout\,
	combout => \u1|u1|u2|ram~41_combout\);

-- Location: LCCOMB_X44_Y31_N16
\u1|u1|u2|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~9_combout\ = (\rtl~8_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!\rtl~8_combout\ & ((\u1|u1|u2|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u2|ram~9_combout\,
	combout => \u1|u1|u2|ram~9_combout\);

-- Location: LCCOMB_X44_Y31_N24
\u1|u1|u2|ram~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~74_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u2|ram~41_combout\) # ((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (((\u1|u1|u2|ram~9_combout\ & 
-- !\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~41_combout\,
	datab => \u1|u1|u2|ram~9_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	combout => \u1|u1|u2|ram~74_combout\);

-- Location: LCCOMB_X44_Y31_N10
\u1|u1|u2|ram~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~57_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(1))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\u1|u1|u2|ram~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~13clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u1|u2|ram~57_combout\,
	combout => \u1|u1|u2|ram~57_combout\);

-- Location: LCCOMB_X44_Y31_N26
\u1|u1|u2|ram~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~75_combout\ = (\u1|u1|u2|ram~74_combout\ & (((\u1|u1|u2|ram~57_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u2|ram~74_combout\ & (\u1|u1|u2|ram~25_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~25_combout\,
	datab => \u1|u1|u2|ram~74_combout\,
	datac => \u1|u1|u2|ram~57_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	combout => \u1|u1|u2|ram~75_combout\);

-- Location: LCCOMB_X41_Y30_N16
\u1|u1|u2|ram~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~83_combout\ = (\u1|u1|u2|ram~80_combout\ & ((\u1|u1|u2|ram~82_combout\) # ((!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))) # (!\u1|u1|u2|ram~80_combout\ & (((\u1|u1|u2|ram~75_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~82_combout\,
	datab => \u1|u1|u2|ram~80_combout\,
	datac => \u1|u1|u2|ram~75_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~83_combout\);

-- Location: FF_X41_Y30_N17
\u1|u2|u1|Reg4_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\,
	d => \u1|u1|u2|ram~83_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u1|Reg4_Out\(1));

-- Location: LCCOMB_X45_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \u1|u2|u1|Reg4_Out\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X46_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X44_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X44_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X49_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X49_Y43_N4
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X49_Y43_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X46_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X46_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X46_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X46_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X46_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X46_Y42_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X46_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X46_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: LCCOMB_X44_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X44_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X45_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X45_Y29_N2
\u1|u0|u0|u0|u1|Reg4_Out[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u0|u1|Reg4_Out[0]~4_combout\ = \u1|u0|u0|u0|u1|Reg4_Out\(0) $ (((!\u1|u0|u1|state.state_bit_0~q\ & \u1|u0|u0|u2|Mux4_Out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u1|state.state_bit_0~q\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datad => \u1|u0|u0|u2|Mux4_Out~1_combout\,
	combout => \u1|u0|u0|u0|u1|Reg4_Out[0]~4_combout\);

-- Location: FF_X45_Y29_N3
\u1|u0|u0|u0|u1|Reg4_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|tmp~clkctrl_outclk\,
	d => \u1|u0|u0|u0|u1|Reg4_Out[0]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u0|u0|u1|Reg4_Out\(0));

-- Location: LCCOMB_X45_Y31_N16
\u1|u1|u2|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~40_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\u1|u1|u2|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~0clkctrl_outclk\,
	datad => \u1|u1|u2|ram~40_combout\,
	combout => \u1|u1|u2|ram~40_combout\);

-- Location: LCCOMB_X42_Y30_N0
\u1|u1|u2|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~44_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\u1|u1|u2|ram~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datad => \u1|u1|u2|ram~44_combout\,
	combout => \u1|u1|u2|ram~44_combout\);

-- Location: LCCOMB_X42_Y30_N6
\u1|u1|u2|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~32_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\u1|u1|u2|ram~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~2clkctrl_outclk\,
	datad => \u1|u1|u2|ram~32_combout\,
	combout => \u1|u1|u2|ram~32_combout\);

-- Location: LCCOMB_X42_Y30_N12
\u1|u1|u2|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~36_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\u1|u1|u2|ram~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datab => \rtl~1clkctrl_outclk\,
	datad => \u1|u1|u2|ram~36_combout\,
	combout => \u1|u1|u2|ram~36_combout\);

-- Location: LCCOMB_X42_Y30_N24
\u1|u1|u2|ram~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~64_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u2|ram~36_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u2|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~32_combout\,
	datab => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u2|ram~36_combout\,
	combout => \u1|u1|u2|ram~64_combout\);

-- Location: LCCOMB_X42_Y30_N10
\u1|u1|u2|ram~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~65_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u2|ram~64_combout\ & ((\u1|u1|u2|ram~44_combout\))) # (!\u1|u1|u2|ram~64_combout\ & (\u1|u1|u2|ram~40_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & 
-- (((\u1|u1|u2|ram~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~40_combout\,
	datab => \u1|u1|u2|ram~44_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u2|ram~64_combout\,
	combout => \u1|u1|u2|ram~65_combout\);

-- Location: LCCOMB_X43_Y32_N28
\u1|u1|u2|ram~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~60_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\u1|u1|u2|ram~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~15clkctrl_outclk\,
	datad => \u1|u1|u2|ram~60_combout\,
	combout => \u1|u1|u2|ram~60_combout\);

-- Location: LCCOMB_X45_Y32_N16
\u1|u1|u2|ram~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~52_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\u1|u1|u2|ram~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~12clkctrl_outclk\,
	datad => \u1|u1|u2|ram~52_combout\,
	combout => \u1|u1|u2|ram~52_combout\);

-- Location: LCCOMB_X45_Y29_N18
\u1|u1|u2|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~48_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\u1|u1|u2|ram~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~14clkctrl_outclk\,
	datad => \u1|u1|u2|ram~48_combout\,
	combout => \u1|u1|u2|ram~48_combout\);

-- Location: LCCOMB_X45_Y32_N2
\u1|u1|u2|ram~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~56_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\u1|u1|u2|ram~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~13clkctrl_outclk\,
	datad => \u1|u1|u2|ram~56_combout\,
	combout => \u1|u1|u2|ram~56_combout\);

-- Location: LCCOMB_X45_Y32_N4
\u1|u1|u2|ram~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~71_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u2|ram~56_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u2|ram~48_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~48_combout\,
	datab => \u1|u1|u2|ram~56_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~71_combout\);

-- Location: LCCOMB_X45_Y32_N14
\u1|u1|u2|ram~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~72_combout\ = (\u1|u1|u2|ram~71_combout\ & ((\u1|u1|u2|ram~60_combout\) # ((!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u2|ram~71_combout\ & (((\u1|u1|u2|ram~52_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~60_combout\,
	datab => \u1|u1|u2|ram~52_combout\,
	datac => \u1|u1|u2|ram~71_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~72_combout\);

-- Location: LCCOMB_X45_Y29_N16
\u1|u1|u2|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\u1|u1|u2|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4clkctrl_outclk\,
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datad => \u1|u1|u2|ram~20_combout\,
	combout => \u1|u1|u2|ram~20_combout\);

-- Location: LCCOMB_X43_Y32_N10
\u1|u1|u2|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\u1|u1|u2|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~7clkctrl_outclk\,
	datad => \u1|u1|u2|ram~28_combout\,
	combout => \u1|u1|u2|ram~28_combout\);

-- Location: LCCOMB_X45_Y32_N28
\u1|u1|u2|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\u1|u1|u2|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datab => \rtl~6clkctrl_outclk\,
	datad => \u1|u1|u2|ram~16_combout\,
	combout => \u1|u1|u2|ram~16_combout\);

-- Location: LCCOMB_X43_Y32_N0
\u1|u1|u2|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\u1|u1|u2|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datab => \rtl~5clkctrl_outclk\,
	datad => \u1|u1|u2|ram~24_combout\,
	combout => \u1|u1|u2|ram~24_combout\);

-- Location: LCCOMB_X45_Y32_N26
\u1|u1|u2|ram~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~66_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u2|ram~24_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u2|ram~16_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datab => \u1|u1|u2|ram~16_combout\,
	datac => \u1|u1|u2|ram~24_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~66_combout\);

-- Location: LCCOMB_X45_Y32_N12
\u1|u1|u2|ram~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~67_combout\ = (\u1|u1|u2|ram~66_combout\ & (((\u1|u1|u2|ram~28_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u2|ram~66_combout\ & (\u1|u1|u2|ram~20_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~20_combout\,
	datab => \u1|u1|u2|ram~28_combout\,
	datac => \u1|u1|u2|ram~66_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~67_combout\);

-- Location: LCCOMB_X45_Y32_N30
\u1|u1|u2|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~8_combout\ = (\rtl~8_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!\rtl~8_combout\ & ((\u1|u1|u2|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \u1|u1|u2|ram~8_combout\,
	datad => \rtl~8_combout\,
	combout => \u1|u1|u2|ram~8_combout\);

-- Location: LCCOMB_X45_Y31_N12
\u1|u1|u2|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~12_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\u1|u1|u2|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datab => \rtl~11clkctrl_outclk\,
	datad => \u1|u1|u2|ram~12_combout\,
	combout => \u1|u1|u2|ram~12_combout\);

-- Location: LCCOMB_X45_Y31_N10
\u1|u1|u2|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~0_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\u1|u1|u2|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datac => \rtl~10clkctrl_outclk\,
	datad => \u1|u1|u2|ram~0_combout\,
	combout => \u1|u1|u2|ram~0_combout\);

-- Location: LCCOMB_X44_Y32_N6
\u1|u1|u2|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~4_combout\ = (\rtl~9_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(0))) # (!\rtl~9_combout\ & ((\u1|u1|u2|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~9_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	datad => \u1|u1|u2|ram~4_combout\,
	combout => \u1|u1|u2|ram~4_combout\);

-- Location: LCCOMB_X45_Y32_N6
\u1|u1|u2|ram~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~68_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u2|ram~4_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (\u1|u1|u2|ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~0_combout\,
	datab => \u1|u1|u2|ram~4_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	combout => \u1|u1|u2|ram~68_combout\);

-- Location: LCCOMB_X45_Y32_N8
\u1|u1|u2|ram~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~69_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u2|ram~68_combout\ & ((\u1|u1|u2|ram~12_combout\))) # (!\u1|u1|u2|ram~68_combout\ & (\u1|u1|u2|ram~8_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & 
-- (((\u1|u1|u2|ram~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~8_combout\,
	datab => \u1|u1|u2|ram~12_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	datad => \u1|u1|u2|ram~68_combout\,
	combout => \u1|u1|u2|ram~69_combout\);

-- Location: LCCOMB_X45_Y32_N10
\u1|u1|u2|ram~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~70_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u2|ram~67_combout\)) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u2|ram~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~67_combout\,
	datab => \u1|u1|u2|ram~69_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	combout => \u1|u1|u2|ram~70_combout\);

-- Location: LCCOMB_X45_Y32_N0
\u1|u1|u2|ram~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~73_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u2|ram~70_combout\ & ((\u1|u1|u2|ram~72_combout\))) # (!\u1|u1|u2|ram~70_combout\ & (\u1|u1|u2|ram~65_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & 
-- (((\u1|u1|u2|ram~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~65_combout\,
	datab => \u1|u1|u2|ram~72_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datad => \u1|u1|u2|ram~70_combout\,
	combout => \u1|u1|u2|ram~73_combout\);

-- Location: FF_X45_Y32_N1
\u1|u2|u1|Reg4_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\,
	d => \u1|u1|u2|ram~73_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u1|Reg4_Out\(0));

-- Location: LCCOMB_X45_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \u1|u2|u1|Reg4_Out\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X45_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X46_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X44_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X44_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X44_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X44_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: IOIBUF_X51_Y54_N1
\Maintenance_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Maintenance_in,
	o => \Maintenance_in~input_o\);

-- Location: LCCOMB_X45_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \Maintenance_in~input_o\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X45_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: IOIBUF_X56_Y54_N1
\Coin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Coin,
	o => \Coin~input_o\);

-- Location: LCCOMB_X45_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datad => \Coin~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X45_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: IOIBUF_X69_Y54_N1
\CoinID~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CoinID,
	o => \CoinID~input_o\);

-- Location: LCCOMB_X45_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \CoinID~input_o\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X45_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X45_Y30_N4
\u1|u2|u0|state.data_available~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u2|u0|state.data_available~0_combout\ = (!\u1|u2|u0|state.state_bit_1~q\ & \u1|u2|u0|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u0|state.state_bit_1~q\,
	datac => \u1|u2|u0|state.state_bit_0~q\,
	combout => \u1|u2|u0|state.data_available~0_combout\);

-- Location: LCCOMB_X45_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \u1|u2|u0|state.data_available~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X45_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X40_Y30_N8
\u1|u0|u0|u0|u1|Reg4_Out[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u0|u1|Reg4_Out[3]~1_combout\ = \u1|u0|u0|u0|u1|Reg4_Out\(3) $ (((\u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\ & \u1|u0|u0|u0|u1|Reg4_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datad => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	combout => \u1|u0|u0|u0|u1|Reg4_Out[3]~1_combout\);

-- Location: FF_X40_Y30_N9
\u1|u0|u0|u0|u1|Reg4_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|tmp~clkctrl_outclk\,
	d => \u1|u0|u0|u0|u1|Reg4_Out[3]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u0|u0|u1|Reg4_Out\(3));

-- Location: LCCOMB_X43_Y31_N18
\u1|u1|u2|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~3_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\u1|u1|u2|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~10clkctrl_outclk\,
	datad => \u1|u1|u2|ram~3_combout\,
	combout => \u1|u1|u2|ram~3_combout\);

-- Location: LCCOMB_X43_Y33_N10
\u1|u1|u2|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\u1|u1|u2|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~6clkctrl_outclk\,
	datad => \u1|u1|u2|ram~19_combout\,
	combout => \u1|u1|u2|ram~19_combout\);

-- Location: LCCOMB_X43_Y31_N12
\u1|u1|u2|ram~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~98_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (((\u1|u1|u2|ram~19_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u2|ram~3_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u2|ram~3_combout\,
	datac => \u1|u1|u2|ram~19_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~98_combout\);

-- Location: LCCOMB_X43_Y31_N20
\u1|u1|u2|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~51_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\u1|u1|u2|ram~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~14clkctrl_outclk\,
	datad => \u1|u1|u2|ram~51_combout\,
	combout => \u1|u1|u2|ram~51_combout\);

-- Location: LCCOMB_X40_Y30_N28
\u1|u1|u2|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~35_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\u1|u1|u2|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~2clkctrl_outclk\,
	datad => \u1|u1|u2|ram~35_combout\,
	combout => \u1|u1|u2|ram~35_combout\);

-- Location: LCCOMB_X43_Y31_N22
\u1|u1|u2|ram~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~99_combout\ = (\u1|u1|u2|ram~98_combout\ & ((\u1|u1|u2|ram~51_combout\) # ((!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u2|ram~98_combout\ & (((\u1|u1|u2|ram~35_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~98_combout\,
	datab => \u1|u1|u2|ram~51_combout\,
	datac => \u1|u1|u2|ram~35_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~99_combout\);

-- Location: LCCOMB_X41_Y31_N2
\u1|u1|u2|ram~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~59_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\u1|u1|u2|ram~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~13clkctrl_outclk\,
	datad => \u1|u1|u2|ram~59_combout\,
	combout => \u1|u1|u2|ram~59_combout\);

-- Location: LCCOMB_X43_Y31_N16
\u1|u1|u2|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~11_combout\ = (\rtl~8_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!\rtl~8_combout\ & ((\u1|u1|u2|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datad => \u1|u1|u2|ram~11_combout\,
	combout => \u1|u1|u2|ram~11_combout\);

-- Location: LCCOMB_X44_Y31_N28
\u1|u1|u2|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\u1|u1|u2|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~5clkctrl_outclk\,
	datad => \u1|u1|u2|ram~27_combout\,
	combout => \u1|u1|u2|ram~27_combout\);

-- Location: LCCOMB_X43_Y31_N24
\u1|u1|u2|ram~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~96_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (((\u1|u1|u2|ram~27_combout\) # (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (\u1|u1|u2|ram~11_combout\ & 
-- ((!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u2|ram~11_combout\,
	datac => \u1|u1|u2|ram~27_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~96_combout\);

-- Location: LCCOMB_X43_Y31_N30
\u1|u1|u2|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~43_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\u1|u1|u2|ram~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \u1|u1|u2|ram~43_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \u1|u1|u2|ram~43_combout\);

-- Location: LCCOMB_X43_Y31_N2
\u1|u1|u2|ram~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~97_combout\ = (\u1|u1|u2|ram~96_combout\ & ((\u1|u1|u2|ram~59_combout\) # ((!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u2|ram~96_combout\ & (((\u1|u1|u2|ram~43_combout\ & \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~59_combout\,
	datab => \u1|u1|u2|ram~96_combout\,
	datac => \u1|u1|u2|ram~43_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~97_combout\);

-- Location: LCCOMB_X43_Y31_N0
\u1|u1|u2|ram~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~100_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & ((\u1|u1|u2|ram~97_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\ & (\u1|u1|u2|ram~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~99_combout\,
	datab => \u1|u1|u2|ram~97_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[1]~0_combout\,
	combout => \u1|u1|u2|ram~100_combout\);

-- Location: LCCOMB_X45_Y30_N6
\u1|u1|u2|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\u1|u1|u2|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~7clkctrl_outclk\,
	datad => \u1|u1|u2|ram~31_combout\,
	combout => \u1|u1|u2|ram~31_combout\);

-- Location: LCCOMB_X45_Y30_N0
\u1|u1|u2|ram~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~63_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\u1|u1|u2|ram~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datab => \rtl~15clkctrl_outclk\,
	datad => \u1|u1|u2|ram~63_combout\,
	combout => \u1|u1|u2|ram~63_combout\);

-- Location: LCCOMB_X43_Y29_N0
\u1|u1|u2|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~15_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\u1|u1|u2|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~11clkctrl_outclk\,
	datad => \u1|u1|u2|ram~15_combout\,
	combout => \u1|u1|u2|ram~15_combout\);

-- Location: LCCOMB_X40_Y30_N14
\u1|u1|u2|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~47_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\u1|u1|u2|ram~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \u1|u1|u2|ram~47_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \u1|u1|u2|ram~47_combout\);

-- Location: LCCOMB_X41_Y30_N22
\u1|u1|u2|ram~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~101_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\) # (\u1|u1|u2|ram~47_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u2|ram~15_combout\ & 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	datab => \u1|u1|u2|ram~15_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u2|ram~47_combout\,
	combout => \u1|u1|u2|ram~101_combout\);

-- Location: LCCOMB_X45_Y30_N22
\u1|u1|u2|ram~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~102_combout\ = (\u1|u1|u2|ram~101_combout\ & (((\u1|u1|u2|ram~63_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u2|ram~101_combout\ & (\u1|u1|u2|ram~31_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~31_combout\,
	datab => \u1|u1|u2|ram~63_combout\,
	datac => \u1|u1|u2|ram~101_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	combout => \u1|u1|u2|ram~102_combout\);

-- Location: LCCOMB_X45_Y34_N28
\u1|u1|u2|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~7_combout\ = (\rtl~9_combout\ & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!\rtl~9_combout\ & ((\u1|u1|u2|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~9_combout\,
	datad => \u1|u1|u2|ram~7_combout\,
	combout => \u1|u1|u2|ram~7_combout\);

-- Location: LCCOMB_X44_Y34_N0
\u1|u1|u2|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~39_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\u1|u1|u2|ram~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~1clkctrl_outclk\,
	datad => \u1|u1|u2|ram~39_combout\,
	combout => \u1|u1|u2|ram~39_combout\);

-- Location: LCCOMB_X45_Y34_N10
\u1|u1|u2|ram~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~94_combout\ = (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\)))) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\ & ((\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & ((\u1|u1|u2|ram~39_combout\))) # 
-- (!\u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\ & (\u1|u1|u2|ram~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datab => \u1|u1|u2|ram~7_combout\,
	datac => \u1|u1|u2|ram~39_combout\,
	datad => \u1|u1|u1|u3|Mux4_MAC_Out[3]~2_combout\,
	combout => \u1|u1|u2|ram~94_combout\);

-- Location: LCCOMB_X45_Y34_N2
\u1|u1|u2|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\u1|u1|u2|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4clkctrl_outclk\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datad => \u1|u1|u2|ram~23_combout\,
	combout => \u1|u1|u2|ram~23_combout\);

-- Location: LCCOMB_X43_Y33_N0
\u1|u1|u2|ram~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~55_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\u1|u0|u0|u0|u1|Reg4_Out\(3))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\u1|u1|u2|ram~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	datac => \rtl~12clkctrl_outclk\,
	datad => \u1|u1|u2|ram~55_combout\,
	combout => \u1|u1|u2|ram~55_combout\);

-- Location: LCCOMB_X45_Y34_N12
\u1|u1|u2|ram~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~95_combout\ = (\u1|u1|u2|ram~94_combout\ & (((\u1|u1|u2|ram~55_combout\) # (!\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))) # (!\u1|u1|u2|ram~94_combout\ & (\u1|u1|u2|ram~23_combout\ & (\u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~94_combout\,
	datab => \u1|u1|u2|ram~23_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[2]~3_combout\,
	datad => \u1|u1|u2|ram~55_combout\,
	combout => \u1|u1|u2|ram~95_combout\);

-- Location: LCCOMB_X45_Y34_N26
\u1|u1|u2|ram~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u2|ram~103_combout\ = (\u1|u1|u2|ram~100_combout\ & ((\u1|u1|u2|ram~102_combout\) # ((!\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\)))) # (!\u1|u1|u2|ram~100_combout\ & (((\u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\ & \u1|u1|u2|ram~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ram~100_combout\,
	datab => \u1|u1|u2|ram~102_combout\,
	datac => \u1|u1|u1|u3|Mux4_MAC_Out[0]~1_combout\,
	datad => \u1|u1|u2|ram~95_combout\,
	combout => \u1|u1|u2|ram~103_combout\);

-- Location: FF_X45_Y34_N27
\u1|u2|u1|Reg4_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u2|u0|BufferControl_Wreg~clkctrl_outclk\,
	d => \u1|u1|u2|ram~103_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u1|Reg4_Out\(3));

-- Location: LCCOMB_X44_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \u1|u2|u1|Reg4_Out\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X44_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X44_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X45_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|Reg4_Out\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X45_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X46_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X46_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X46_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X46_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X46_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X46_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X46_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X46_Y41_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X45_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X45_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X45_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X46_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X50_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X50_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X45_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X45_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X45_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X45_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X45_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X45_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X45_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X45_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X45_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: FF_X45_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X45_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X45_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X45_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X45_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X46_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X45_Y43_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X45_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X45_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X46_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X45_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X45_Y43_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X45_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X45_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X46_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X46_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X50_Y44_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~10\);

-- Location: LCCOMB_X50_Y44_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\);

-- Location: LCCOMB_X46_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: FF_X50_Y44_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X50_Y44_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\);

-- Location: FF_X50_Y44_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X50_Y44_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: FF_X50_Y44_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X50_Y44_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\);

-- Location: FF_X50_Y44_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X50_Y44_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X50_Y44_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\);

-- Location: FF_X50_Y44_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~20_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X50_Y44_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\);

-- Location: LCCOMB_X50_Y44_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\);

-- Location: LCCOMB_X49_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X46_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X49_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X49_Y43_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X49_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X49_Y43_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X49_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X49_Y43_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X49_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X49_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X49_Y44_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X49_Y44_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X50_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\);

-- Location: LCCOMB_X49_Y44_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\);

-- Location: LCCOMB_X49_Y44_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X50_Y44_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: LCCOMB_X50_Y44_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: LCCOMB_X49_Y44_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X49_Y44_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X49_Y44_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X49_Y44_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X49_Y44_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X50_Y44_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X50_Y44_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X49_Y44_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X49_Y44_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X50_Y44_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X50_Y44_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X49_Y44_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X49_Y44_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X49_Y44_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X49_Y44_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X49_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X49_Y44_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X49_Y44_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X49_Y44_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X49_Y44_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X46_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X46_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X46_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X46_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X46_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X46_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X46_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X46_Y43_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X46_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X46_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X46_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \~GND~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X46_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X46_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G13
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X45_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X45_Y41_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X45_Y30_N10
\u1|u2|u0|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u2|u0|state.state_bit_1~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- \u1|u2|u0|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \u1|u2|u0|state.state_bit_0~q\,
	combout => \u1|u2|u0|state.state_bit_1~0_combout\);

-- Location: FF_X45_Y30_N11
\u1|u2|u0|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u2|u0|state.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u0|state.state_bit_1~q\);

-- Location: LCCOMB_X45_Y30_N24
\u1|u1|u0|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_1~0_combout\ = (\u1|u1|u0|state.state_bit_2~q\ & !\u1|u1|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u0|state.state_bit_1~0_combout\);

-- Location: LCCOMB_X45_Y30_N8
\u1|u2|u0|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u2|u0|state.state_bit_0~0_combout\ = (\u1|u2|u0|state.state_bit_1~q\ & (\aut
-- o_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & (\u1|u2|u0|state.state_bit_0~q\))) # 
-- (!\u1|u2|u0|state.state_bit_1~q\ & (((\u1|u2|u0|state.state_bit_0~q\) # (\u1|u1|u0|state.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u0|state.state_bit_1~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \u1|u2|u0|state.state_bit_0~q\,
	datad => \u1|u1|u0|state.state_bit_1~0_combout\,
	combout => \u1|u2|u0|state.state_bit_0~0_combout\);

-- Location: FF_X45_Y30_N9
\u1|u2|u0|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u2|u0|state.state_bit_0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|u0|state.state_bit_0~q\);

-- Location: LCCOMB_X46_Y34_N24
\u1|u1|u0|state.state_bit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_2~2_combout\ = (!\u1|u2|u0|state.state_bit_0~q\ & ((\u1|u1|u1|Equal0~0_combout\ & ((\u1|u1|u1|u2|u1|Reg5_Out\(4)))) # (!\u1|u1|u1|Equal0~0_combout\ & (!\u1|u0|u1|state.hold~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u1|state.hold~0_combout\,
	datab => \u1|u2|u0|state.state_bit_0~q\,
	datac => \u1|u1|u1|Equal0~0_combout\,
	datad => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	combout => \u1|u1|u0|state.state_bit_2~2_combout\);

-- Location: LCCOMB_X46_Y34_N10
\u1|u1|u0|state.state_bit_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_2~3_combout\ = (\u1|u1|u0|state.state_bit_2~q\ & ((\u1|u0|u1|state.hold~0_combout\) # ((\u1|u1|u0|state.state_bit_2~2_combout\ & !\u1|u1|u0|state.state_bit_1~q\)))) # (!\u1|u1|u0|state.state_bit_2~q\ & 
-- (((\u1|u1|u0|state.state_bit_2~2_combout\) # (\u1|u1|u0|state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u1|state.hold~0_combout\,
	datab => \u1|u1|u0|state.state_bit_2~q\,
	datac => \u1|u1|u0|state.state_bit_2~2_combout\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u0|state.state_bit_2~3_combout\);

-- Location: LCCOMB_X46_Y34_N16
\u1|u1|u0|state.state_bit_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u0|state.state_bit_2~4_combout\ = (\u1|u1|u0|state.state_bit_0~q\ & (((\u1|u1|u0|state.state_bit_2~q\ & !\u1|u1|u0|state.state_bit_1~q\)))) # (!\u1|u1|u0|state.state_bit_0~q\ & (\u1|u1|u0|state.state_bit_2~3_combout\ & 
-- ((\u1|u1|u0|state.state_bit_1~q\) # (!\u1|u1|u0|state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u0|state.state_bit_2~3_combout\,
	datab => \u1|u1|u0|state.state_bit_0~q\,
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_1~q\,
	combout => \u1|u1|u0|state.state_bit_2~4_combout\);

-- Location: FF_X46_Y34_N17
\u1|u1|u0|state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|u1|u0|state.state_bit_2~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|u0|state.state_bit_2~q\);

-- Location: LCCOMB_X44_Y32_N24
\u1|u0|u1|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u1|state.state_bit_1~0_combout\ = (\u1|u1|u0|state.state_bit_2~q\ & !\u1|u1|u0|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u0|state.state_bit_2~q\,
	datad => \u1|u1|u0|state.state_bit_0~q\,
	combout => \u1|u0|u1|state.state_bit_1~0_combout\);

-- Location: LCCOMB_X45_Y29_N12
\u1|u0|u1|state.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u1|state.state_bit_1~1_combout\ = (\u1|u0|u1|state.state_bit_0~q\ & ((\u1|u0|u1|state.state_bit_1~0_combout\) # ((!\u1|u0|u0|u2|Mux4_Out~1_combout\ & \u1|u0|u1|state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u2|Mux4_Out~1_combout\,
	datab => \u1|u0|u1|state.state_bit_1~0_combout\,
	datac => \u1|u0|u1|state.state_bit_1~q\,
	datad => \u1|u0|u1|state.state_bit_0~q\,
	combout => \u1|u0|u1|state.state_bit_1~1_combout\);

-- Location: FF_X45_Y29_N13
\u1|u0|u1|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|ALT_INV_tmp~clkctrl_outclk\,
	d => \u1|u0|u1|state.state_bit_1~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u1|state.state_bit_1~q\);

-- Location: LCCOMB_X45_Y29_N24
\u1|u0|u1|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u1|state.state_bit_0~0_combout\ = (\u1|u0|u1|state.state_bit_1~q\ & (\u1|u0|u1|state.state_bit_0~q\ & ((\u1|u0|u1|state.state_bit_1~0_combout\) # (!\u1|u0|u0|u2|Mux4_Out~1_combout\)))) # (!\u1|u0|u1|state.state_bit_1~q\ & 
-- (((\u1|u0|u1|state.state_bit_0~q\) # (!\u1|u0|u0|u2|Mux4_Out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u1|state.state_bit_1~q\,
	datab => \u1|u0|u1|state.state_bit_1~0_combout\,
	datac => \u1|u0|u1|state.state_bit_0~q\,
	datad => \u1|u0|u0|u2|Mux4_Out~1_combout\,
	combout => \u1|u0|u1|state.state_bit_0~0_combout\);

-- Location: FF_X45_Y29_N25
\u1|u0|u1|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|ALT_INV_tmp~clkctrl_outclk\,
	d => \u1|u0|u1|state.state_bit_0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u1|state.state_bit_0~q\);

-- Location: LCCOMB_X45_Y29_N8
\u1|u0|u0|u0|u1|Reg4_Out[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u0|u1|Reg4_Out[1]~3_combout\ = \u1|u0|u0|u0|u1|Reg4_Out\(1) $ (((\u1|u0|u0|u2|Mux4_Out~1_combout\ & (!\u1|u0|u1|state.state_bit_0~q\ & \u1|u0|u0|u0|u1|Reg4_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u2|Mux4_Out~1_combout\,
	datab => \u1|u0|u1|state.state_bit_0~q\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	combout => \u1|u0|u0|u0|u1|Reg4_Out[1]~3_combout\);

-- Location: FF_X45_Y29_N9
\u1|u0|u0|u0|u1|Reg4_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|tmp~clkctrl_outclk\,
	d => \u1|u0|u0|u0|u1|Reg4_Out[1]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u0|u0|u1|Reg4_Out\(1));

-- Location: LCCOMB_X45_Y29_N4
\u1|u0|u0|u2|Mux4_Out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u2|Mux4_Out~0_combout\ = (\u1|u0|u0|u0|u1|Reg4_Out\(1) & (((\u1|u0|u0|u0|u1|Reg4_Out\(0))))) # (!\u1|u0|u0|u0|u1|Reg4_Out\(1) & ((\u1|u0|u0|u0|u1|Reg4_Out\(0) & (\KBD_KeyLin[1]~input_o\)) # (!\u1|u0|u0|u0|u1|Reg4_Out\(0) & 
-- ((\KBD_KeyLin[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD_KeyLin[1]~input_o\,
	datab => \KBD_KeyLin[0]~input_o\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	combout => \u1|u0|u0|u2|Mux4_Out~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\KBD_KeyLin[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBD_KeyLin(2),
	o => \KBD_KeyLin[2]~input_o\);

-- Location: LCCOMB_X45_Y29_N6
\u1|u0|u0|u2|Mux4_Out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u2|Mux4_Out~1_combout\ = (\u1|u0|u0|u2|Mux4_Out~0_combout\ & ((\KBD_KeyLin[3]~input_o\) # ((!\u1|u0|u0|u0|u1|Reg4_Out\(1))))) # (!\u1|u0|u0|u2|Mux4_Out~0_combout\ & (((\u1|u0|u0|u0|u1|Reg4_Out\(1) & \KBD_KeyLin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD_KeyLin[3]~input_o\,
	datab => \u1|u0|u0|u2|Mux4_Out~0_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \KBD_KeyLin[2]~input_o\,
	combout => \u1|u0|u0|u2|Mux4_Out~1_combout\);

-- Location: LCCOMB_X45_Y29_N10
\u1|u0|u0|u0|u1|Reg4_Out[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\ = (\u1|u0|u0|u2|Mux4_Out~1_combout\ & (!\u1|u0|u1|state.state_bit_0~q\ & (\u1|u0|u0|u0|u1|Reg4_Out\(1) & \u1|u0|u0|u0|u1|Reg4_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u0|u0|u2|Mux4_Out~1_combout\,
	datab => \u1|u0|u1|state.state_bit_0~q\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(1),
	datad => \u1|u0|u0|u0|u1|Reg4_Out\(0),
	combout => \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\);

-- Location: LCCOMB_X40_Y30_N18
\u1|u0|u0|u0|u1|Reg4_Out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u0|u1|Reg4_Out[2]~2_combout\ = \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\ $ (\u1|u0|u0|u0|u1|Reg4_Out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out[2]~0_combout\,
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	combout => \u1|u0|u0|u0|u1|Reg4_Out[2]~2_combout\);

-- Location: FF_X40_Y30_N19
\u1|u0|u0|u0|u1|Reg4_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|u0|u2|tmp~clkctrl_outclk\,
	d => \u1|u0|u0|u0|u1|Reg4_Out[2]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u0|u0|u0|u1|Reg4_Out\(2));

-- Location: LCCOMB_X40_Y30_N4
\u1|u0|u0|u1|Dec4_Out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u1|Dec4_Out\(0) = (\u1|u0|u0|u0|u1|Reg4_Out\(2)) # (\u1|u0|u0|u0|u1|Reg4_Out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	combout => \u1|u0|u0|u1|Dec4_Out\(0));

-- Location: LCCOMB_X40_Y30_N22
\u1|u0|u0|u1|Dec4_Out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u1|Dec4_Out[1]~0_combout\ = (\u1|u0|u0|u0|u1|Reg4_Out\(2) & !\u1|u0|u0|u0|u1|Reg4_Out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	combout => \u1|u0|u0|u1|Dec4_Out[1]~0_combout\);

-- Location: LCCOMB_X40_Y30_N0
\u1|u0|u0|u1|Dec4_Out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u1|Dec4_Out[1]~1_combout\ = (!\u1|u0|u0|u0|u1|Reg4_Out\(2) & \u1|u0|u0|u0|u1|Reg4_Out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	combout => \u1|u0|u0|u1|Dec4_Out[1]~1_combout\);

-- Location: LCCOMB_X40_Y30_N26
\u1|u0|u0|u1|Dec4_Out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u0|u0|u1|Dec4_Out[1]~2_combout\ = (\u1|u0|u0|u0|u1|Reg4_Out\(2) & \u1|u0|u0|u0|u1|Reg4_Out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|u0|u0|u1|Reg4_Out\(2),
	datac => \u1|u0|u0|u0|u1|Reg4_Out\(3),
	combout => \u1|u0|u0|u1|Dec4_Out[1]~2_combout\);

-- Location: LCCOMB_X42_Y26_N24
\u2|u1|count_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|count_enable~0_combout\ = (\u2|u1|state.state_bit_1~q\ & ((\u2|u1|state.state_bit_0~q\) # (!\u2|u1|state.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_2~q\,
	datab => \u2|u1|state.state_bit_1~q\,
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|count_enable~0_combout\);

-- Location: LCCOMB_X42_Y26_N8
\u2|u1|u0|u1|Reg5_Out[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[4]~0_combout\ = \u2|u1|u0|u1|Reg5_Out\(4) $ (((\u2|u1|count_enable~0_combout\ & \u2|u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|count_enable~0_combout\,
	datac => \u2|u1|u0|u1|Reg5_Out\(4),
	datad => \u2|u1|Equal0~0_combout\,
	combout => \u2|u1|u0|u1|Reg5_Out[4]~0_combout\);

-- Location: LCCOMB_X42_Y26_N26
\u2|u1|state.reset_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.reset_counter~1_combout\ = (!\u2|u1|state.state_bit_1~q\ & \u2|u1|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|state.state_bit_1~q\,
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|state.reset_counter~1_combout\);

-- Location: FF_X42_Y26_N9
\u2|u1|u0|u1|Reg5_Out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|u0|u1|Reg5_Out[4]~0_combout\,
	clrn => \u2|u1|ALT_INV_state.reset_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|u0|u1|Reg5_Out\(4));

-- Location: LCCOMB_X42_Y26_N28
\u2|u1|state.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_0~1_combout\ = (\u2|u1|state.state_bit_0~q\ & (((\u2|u1|u0|u1|Reg5_Out\(4)) # (!\u2|u1|state.state_bit_1~q\)) # (!\u2|u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|Equal0~0_combout\,
	datab => \u2|u1|state.state_bit_1~q\,
	datac => \u2|u1|u0|u1|Reg5_Out\(4),
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|state.state_bit_0~1_combout\);

-- Location: LCCOMB_X45_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X45_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X42_Y27_N30
\u2|u0|u0|state.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_1~2_combout\ = (\u2|u0|u0|state.state_bit_0~q\ & (\u2|u0|u0|state.state_bit_2~q\)) # (!\u2|u0|u0|state.state_bit_0~q\ & (((\u2|u0|u0|state.state_bit_2~q\ & !\u2|u1|state.state_bit_2~q\)) # (!\u2|u0|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_2~q\,
	datab => \u2|u0|u0|state.state_bit_0~q\,
	datac => \u2|u1|state.state_bit_2~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.state_bit_1~2_combout\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y27_N12
\u2|u0|u3|u1|Reg3_Out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u3|u1|Reg3_Out[0]~2_combout\ = !\u2|u0|u3|u1|Reg3_Out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u3|u1|Reg3_Out\(0),
	combout => \u2|u0|u3|u1|Reg3_Out[0]~2_combout\);

-- Location: LCCOMB_X42_Y27_N10
\u2|u0|u0|state.start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.start~0_combout\ = (!\u2|u0|u0|state.state_bit_0~q\ & !\u2|u0|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u0|state.state_bit_0~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.start~0_combout\);

-- Location: FF_X43_Y27_N13
\u2|u0|u3|u1|Reg3_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u3|u1|Reg3_Out[0]~2_combout\,
	clrn => \u2|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u3|u1|Reg3_Out\(0));

-- Location: LCCOMB_X43_Y27_N24
\u2|u0|u3|u1|Reg3_Out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u3|u1|Reg3_Out[1]~0_combout\ = \u2|u0|u3|u1|Reg3_Out\(1) $ (\u2|u0|u3|u1|Reg3_Out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u3|u1|Reg3_Out\(1),
	datad => \u2|u0|u3|u1|Reg3_Out\(0),
	combout => \u2|u0|u3|u1|Reg3_Out[1]~0_combout\);

-- Location: FF_X43_Y27_N25
\u2|u0|u3|u1|Reg3_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u3|u1|Reg3_Out[1]~0_combout\,
	clrn => \u2|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u3|u1|Reg3_Out\(1));

-- Location: LCCOMB_X43_Y27_N26
\u2|u0|u3|u1|Reg3_Out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u3|u1|Reg3_Out[2]~1_combout\ = \u2|u0|u3|u1|Reg3_Out\(2) $ (((\u2|u0|u3|u1|Reg3_Out\(1) & \u2|u0|u3|u1|Reg3_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u0|u3|u1|Reg3_Out\(1),
	datac => \u2|u0|u3|u1|Reg3_Out\(2),
	datad => \u2|u0|u3|u1|Reg3_Out\(0),
	combout => \u2|u0|u3|u1|Reg3_Out[2]~1_combout\);

-- Location: FF_X43_Y27_N27
\u2|u0|u3|u1|Reg3_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u3|u1|Reg3_Out[2]~1_combout\,
	clrn => \u2|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u3|u1|Reg3_Out\(2));

-- Location: LCCOMB_X43_Y27_N6
\u2|u0|u0|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_1~0_combout\ = ((\u2|u0|u3|u1|Reg3_Out\(1)) # ((\auto_
-- hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\) # (!\u2|u0|u3|u1|Reg3_Out\(2)))) # 
-- (!\u2|u0|u3|u1|Reg3_Out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u3|u1|Reg3_Out\(0),
	datab => \u2|u0|u3|u1|Reg3_Out\(1),
	datac => \u2|u0|u3|u1|Reg3_Out\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	combout => \u2|u0|u0|state.state_bit_1~0_combout\);

-- Location: LCCOMB_X42_Y27_N28
\u2|u0|u0|state.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_1~1_combout\ = (\u2|u0|u0|state.state_bit_0~q\ & (!\u2|u0|u0|state.state_bit_1~q\ & ((\u2|u0|u0|state.state_bit_1~0_combout\) # 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_1~0_combout\,
	datab => \u2|u0|u0|state.state_bit_0~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.state_bit_1~1_combout\);

-- Location: LCCOMB_X43_Y27_N0
\u2|u0|pFlag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|pFlag~0_combout\ = (!\u2|u0|u3|u1|Reg3_Out\(0) & (\u2|u0|u3|u1|Reg3_Out\(1) & (\u2|u0|u3|u1|Reg3_Out\(2) & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u3|u1|Reg3_Out\(0),
	datab => \u2|u0|u3|u1|Reg3_Out\(1),
	datac => \u2|u0|u3|u1|Reg3_Out\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	combout => \u2|u0|pFlag~0_combout\);

-- Location: LCCOMB_X43_Y27_N10
\u2|u0|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u2|Q~0_combout\ = !\u2|u0|u2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u2|Q~q\,
	combout => \u2|u0|u2|Q~0_combout\);

-- Location: LCCOMB_X45_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X45_Y41_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: FF_X43_Y27_N11
\u2|u0|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u2|Q~0_combout\,
	clrn => \u2|u0|u0|ALT_INV_state.start~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u2|Q~q\);

-- Location: LCCOMB_X43_Y27_N4
\u2|u0|u0|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_0~0_combout\ = (\u2|u0|u0|state.state_bit_1~q\ & (!\au
-- to_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & (\u2|u0|u0|state.state_bit_0~q\ & !\u2|u0|u2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_1~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \u2|u0|u0|state.state_bit_0~q\,
	datad => \u2|u0|u2|Q~q\,
	combout => \u2|u0|u0|state.state_bit_0~0_combout\);

-- Location: LCCOMB_X42_Y27_N2
\u2|u0|u0|state.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_1~3_combout\ = (!\u2|u0|u0|state.state_bit_1~2_combout\ & (!\u2|u0|u0|state.state_bit_1~1_combout\ & ((!\u2|u0|u0|state.state_bit_0~0_combout\) # (!\u2|u0|pFlag~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_1~2_combout\,
	datab => \u2|u0|u0|state.state_bit_1~1_combout\,
	datac => \u2|u0|pFlag~0_combout\,
	datad => \u2|u0|u0|state.state_bit_0~0_combout\,
	combout => \u2|u0|u0|state.state_bit_1~3_combout\);

-- Location: FF_X42_Y27_N3
\u2|u0|u0|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u0|u0|state.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u0|state.state_bit_1~q\);

-- Location: LCCOMB_X42_Y27_N24
\u2|u0|u0|state.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_0~1_combout\ = (\u2|u0|u0|state.state_bit_1~q\ & (\u2|u0|u0|state.state_bit_0~q\)) # (!\u2|u0|u0|state.state_bit_1~q\ & 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u0|u0|state.state_bit_0~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.state_bit_0~1_combout\);

-- Location: LCCOMB_X42_Y27_N14
\u2|u0|u0|state.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_0~2_combout\ = (!\u2|u0|u0|state.state_bit_2~q\ & (\u2|u0|u0|state.state_bit_0~1_combout\ & ((!\u2|u0|u0|state.state_bit_1~q\) # (!\u2|u0|pFlag~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_2~q\,
	datab => \u2|u0|u0|state.state_bit_0~1_combout\,
	datac => \u2|u0|pFlag~0_combout\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.state_bit_0~2_combout\);

-- Location: FF_X42_Y27_N15
\u2|u0|u0|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u0|u0|state.state_bit_0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u0|state.state_bit_0~q\);

-- Location: LCCOMB_X42_Y27_N12
\u2|u0|u0|state.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.state_bit_2~0_combout\ = (!\u2|u0|u0|state.state_bit_0~q\ & (\u2|u1|state.state_bit_2~q\ & \u2|u0|u0|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u0|u0|state.state_bit_0~q\,
	datac => \u2|u1|state.state_bit_2~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.state_bit_2~0_combout\);

-- Location: FF_X42_Y27_N13
\u2|u0|u0|state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u0|u0|state.state_bit_2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u0|state.state_bit_2~q\);

-- Location: LCCOMB_X42_Y27_N8
\u2|u0|u0|state.output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.output_data~0_combout\ = (!\u2|u0|u0|state.state_bit_2~q\ & (!\u2|u0|u0|state.state_bit_0~q\ & \u2|u0|u0|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|u0|state.state_bit_2~q\,
	datac => \u2|u0|u0|state.state_bit_0~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.output_data~0_combout\);

-- Location: LCCOMB_X42_Y26_N14
\u2|u1|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_0~0_combout\ = (!\u2|u1|state.state_bit_0~q\ & (!\u2|u1|state.state_bit_1~q\ & \u2|u0|u0|state.output_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|state.state_bit_0~q\,
	datac => \u2|u1|state.state_bit_1~q\,
	datad => \u2|u0|u0|state.output_data~0_combout\,
	combout => \u2|u1|state.state_bit_0~0_combout\);

-- Location: LCCOMB_X42_Y26_N4
\u2|u1|state.reset_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.reset_counter~0_combout\ = (\u2|u1|state.state_bit_1~q\ & !\u2|u1|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|state.state_bit_1~q\,
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|state.reset_counter~0_combout\);

-- Location: LCCOMB_X42_Y26_N0
\u2|u1|state.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_0~2_combout\ = (\u2|u1|state.state_bit_0~1_combout\ & (((\u2|u1|state.reset_counter~0_combout\) # (!\u2|u1|state.state_bit_2~q\)))) # (!\u2|u1|state.state_bit_0~1_combout\ & (\u2|u1|state.state_bit_0~0_combout\ & 
-- ((\u2|u1|state.reset_counter~0_combout\) # (!\u2|u1|state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_0~1_combout\,
	datab => \u2|u1|state.state_bit_0~0_combout\,
	datac => \u2|u1|state.reset_counter~0_combout\,
	datad => \u2|u1|state.state_bit_2~q\,
	combout => \u2|u1|state.state_bit_0~2_combout\);

-- Location: FF_X42_Y26_N1
\u2|u1|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|state.state_bit_0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|state.state_bit_0~q\);

-- Location: LCCOMB_X42_Y26_N16
\u2|u1|u0|u1|Reg5_Out[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[0]~5_combout\ = \u2|u1|u0|u1|Reg5_Out\(0) $ (((\u2|u1|state.state_bit_1~q\ & ((\u2|u1|state.state_bit_0~q\) # (!\u2|u1|state.state_bit_2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_2~q\,
	datab => \u2|u1|state.state_bit_1~q\,
	datac => \u2|u1|u0|u1|Reg5_Out\(0),
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|u0|u1|Reg5_Out[0]~5_combout\);

-- Location: FF_X42_Y26_N17
\u2|u1|u0|u1|Reg5_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|u0|u1|Reg5_Out[0]~5_combout\,
	clrn => \u2|u1|ALT_INV_state.reset_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|u0|u1|Reg5_Out\(0));

-- Location: LCCOMB_X42_Y26_N20
\u2|u1|u0|u1|Reg5_Out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[1]~1_combout\ = (\u2|u1|state.state_bit_1~q\ & (\u2|u1|u0|u1|Reg5_Out\(0) & ((\u2|u1|state.state_bit_0~q\) # (!\u2|u1|state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_2~q\,
	datab => \u2|u1|state.state_bit_1~q\,
	datac => \u2|u1|u0|u1|Reg5_Out\(0),
	datad => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|u0|u1|Reg5_Out[1]~1_combout\);

-- Location: LCCOMB_X42_Y26_N30
\u2|u1|u0|u1|Reg5_Out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[1]~4_combout\ = \u2|u1|u0|u1|Reg5_Out\(1) $ (\u2|u1|u0|u1|Reg5_Out[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u1|u0|u1|Reg5_Out\(1),
	datad => \u2|u1|u0|u1|Reg5_Out[1]~1_combout\,
	combout => \u2|u1|u0|u1|Reg5_Out[1]~4_combout\);

-- Location: FF_X42_Y26_N31
\u2|u1|u0|u1|Reg5_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|u0|u1|Reg5_Out[1]~4_combout\,
	clrn => \u2|u1|ALT_INV_state.reset_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|u0|u1|Reg5_Out\(1));

-- Location: LCCOMB_X42_Y26_N12
\u2|u1|u0|u1|Reg5_Out[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[2]~3_combout\ = \u2|u1|u0|u1|Reg5_Out\(2) $ (((\u2|u1|u0|u1|Reg5_Out\(1) & \u2|u1|u0|u1|Reg5_Out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u0|u1|Reg5_Out\(1),
	datab => \u2|u1|u0|u1|Reg5_Out[1]~1_combout\,
	datac => \u2|u1|u0|u1|Reg5_Out\(2),
	combout => \u2|u1|u0|u1|Reg5_Out[2]~3_combout\);

-- Location: FF_X42_Y26_N13
\u2|u1|u0|u1|Reg5_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|u0|u1|Reg5_Out[2]~3_combout\,
	clrn => \u2|u1|ALT_INV_state.reset_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|u0|u1|Reg5_Out\(2));

-- Location: LCCOMB_X42_Y26_N18
\u2|u1|u0|u1|Reg5_Out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|u0|u1|Reg5_Out[3]~2_combout\ = \u2|u1|u0|u1|Reg5_Out\(3) $ (((\u2|u1|u0|u1|Reg5_Out\(1) & (\u2|u1|u0|u1|Reg5_Out[1]~1_combout\ & \u2|u1|u0|u1|Reg5_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u0|u1|Reg5_Out\(1),
	datab => \u2|u1|u0|u1|Reg5_Out[1]~1_combout\,
	datac => \u2|u1|u0|u1|Reg5_Out\(3),
	datad => \u2|u1|u0|u1|Reg5_Out\(2),
	combout => \u2|u1|u0|u1|Reg5_Out[3]~2_combout\);

-- Location: FF_X42_Y26_N19
\u2|u1|u0|u1|Reg5_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|u0|u1|Reg5_Out[3]~2_combout\,
	clrn => \u2|u1|ALT_INV_state.reset_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|u0|u1|Reg5_Out\(3));

-- Location: LCCOMB_X42_Y26_N10
\u2|u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|Equal0~0_combout\ = (\u2|u1|u0|u1|Reg5_Out\(2) & (\u2|u1|u0|u1|Reg5_Out\(0) & (\u2|u1|u0|u1|Reg5_Out\(1) & \u2|u1|u0|u1|Reg5_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u0|u1|Reg5_Out\(2),
	datab => \u2|u1|u0|u1|Reg5_Out\(0),
	datac => \u2|u1|u0|u1|Reg5_Out\(1),
	datad => \u2|u1|u0|u1|Reg5_Out\(3),
	combout => \u2|u1|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y26_N22
\u2|u1|state.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_2~0_combout\ = (\u2|u1|Equal0~0_combout\ & (\u2|u1|state.reset_counter~0_combout\ & (\u2|u1|u0|u1|Reg5_Out\(4) & !\u2|u1|state.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|Equal0~0_combout\,
	datab => \u2|u1|state.reset_counter~0_combout\,
	datac => \u2|u1|u0|u1|Reg5_Out\(4),
	datad => \u2|u1|state.state_bit_2~q\,
	combout => \u2|u1|state.state_bit_2~0_combout\);

-- Location: LCCOMB_X42_Y26_N6
\u2|u1|state.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_2~1_combout\ = (\u2|u1|state.state_bit_2~q\ & (\u2|u1|state.reset_counter~0_combout\ & ((\u2|u1|state.state_bit_2~0_combout\) # (\u2|u0|u0|state.output_data~0_combout\)))) # (!\u2|u1|state.state_bit_2~q\ & 
-- (\u2|u1|state.state_bit_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_2~0_combout\,
	datab => \u2|u1|state.reset_counter~0_combout\,
	datac => \u2|u1|state.state_bit_2~q\,
	datad => \u2|u0|u0|state.output_data~0_combout\,
	combout => \u2|u1|state.state_bit_2~1_combout\);

-- Location: FF_X42_Y26_N7
\u2|u1|state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|state.state_bit_2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|state.state_bit_2~q\);

-- Location: LCCOMB_X42_Y26_N2
\u2|u1|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.state_bit_1~0_combout\ = (\u2|u1|state.state_bit_0~q\ & (!\u2|u1|state.state_bit_2~q\)) # (!\u2|u1|state.state_bit_0~q\ & (\u2|u1|state.state_bit_1~q\ & ((\u2|u0|u0|state.output_data~0_combout\) # (!\u2|u1|state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_2~q\,
	datab => \u2|u1|state.state_bit_0~q\,
	datac => \u2|u1|state.state_bit_1~q\,
	datad => \u2|u0|u0|state.output_data~0_combout\,
	combout => \u2|u1|state.state_bit_1~0_combout\);

-- Location: FF_X42_Y26_N3
\u2|u1|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|u1|state.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u1|state.state_bit_1~q\);

-- Location: LCCOMB_X43_Y26_N0
\u2|u1|state.enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u1|state.enable~0_combout\ = (\u2|u1|state.state_bit_1~q\ & \u2|u1|state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|state.state_bit_1~q\,
	datac => \u2|u1|state.state_bit_0~q\,
	combout => \u2|u1|state.enable~0_combout\);

-- Location: LCCOMB_X42_Y27_N16
\u2|u0|u1|D[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u1|D[4]~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \u2|u0|u1|D[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y27_N26
\u2|u0|u0|state.wait_for_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u0|state.wait_for_data~0_combout\ = (\u2|u0|u0|state.state_bit_0~q\ & !\u2|u0|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u0|state.state_bit_0~q\,
	datad => \u2|u0|u0|state.state_bit_1~q\,
	combout => \u2|u0|u0|state.wait_for_data~0_combout\);

-- Location: FF_X42_Y27_N17
\u2|u0|u1|D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u1|D[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u2|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u1|D\(4));

-- Location: LCCOMB_X42_Y27_N22
\u2|u0|u1|D[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u1|D[3]~feeder_combout\ = \u2|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|u0|u1|D\(4),
	combout => \u2|u0|u1|D[3]~feeder_combout\);

-- Location: FF_X42_Y27_N23
\u2|u0|u1|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u1|D[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u2|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u1|D\(3));

-- Location: LCCOMB_X42_Y27_N4
\u2|u0|u1|D[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u1|D[2]~feeder_combout\ = \u2|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u1|D\(3),
	combout => \u2|u0|u1|D[2]~feeder_combout\);

-- Location: FF_X42_Y27_N5
\u2|u0|u1|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u1|D[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u2|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u1|D\(2));

-- Location: LCCOMB_X42_Y27_N18
\u2|u0|u1|D[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u1|D[1]~feeder_combout\ = \u2|u0|u1|D\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|u0|u1|D\(2),
	combout => \u2|u0|u1|D[1]~feeder_combout\);

-- Location: FF_X42_Y27_N19
\u2|u0|u1|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u1|D[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u2|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u1|D\(1));

-- Location: LCCOMB_X42_Y27_N0
\u2|u0|u1|D[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|u0|u1|D[0]~feeder_combout\ = \u2|u0|u1|D\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|u0|u1|D\(1),
	combout => \u2|u0|u1|D[0]~feeder_combout\);

-- Location: FF_X42_Y27_N1
\u2|u0|u1|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u2|u0|u1|D[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u2|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|u0|u1|D\(0));

-- Location: LCCOMB_X45_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X45_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X44_Y42_N8
\u3|u0|u3|u1|Reg4_Out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u3|u1|Reg4_Out[0]~3_combout\ = !\u3|u0|u3|u1|Reg4_Out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u3|u1|Reg4_Out\(0),
	combout => \u3|u0|u3|u1|Reg4_Out[0]~3_combout\);

-- Location: LCCOMB_X45_Y42_N18
\u3|u0|u0|state.start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.start~0_combout\ = (!\u3|u0|u0|state.state_bit_0~q\ & !\u3|u0|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u0|state.state_bit_0~q\,
	datad => \u3|u0|u0|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.start~0_combout\);

-- Location: FF_X44_Y42_N9
\u3|u0|u3|u1|Reg4_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u3|u1|Reg4_Out[0]~3_combout\,
	clrn => \u3|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u3|u1|Reg4_Out\(0));

-- Location: LCCOMB_X44_Y42_N6
\u3|u0|u3|u1|Reg4_Out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u3|u1|Reg4_Out[1]~2_combout\ = \u3|u0|u3|u1|Reg4_Out\(0) $ (\u3|u0|u3|u1|Reg4_Out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u0|u3|u1|Reg4_Out\(0),
	datac => \u3|u0|u3|u1|Reg4_Out\(1),
	combout => \u3|u0|u3|u1|Reg4_Out[1]~2_combout\);

-- Location: FF_X44_Y42_N7
\u3|u0|u3|u1|Reg4_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u3|u1|Reg4_Out[1]~2_combout\,
	clrn => \u3|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u3|u1|Reg4_Out\(1));

-- Location: LCCOMB_X44_Y42_N12
\u3|u0|u3|u1|Reg4_Out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u3|u1|Reg4_Out[2]~1_combout\ = \u3|u0|u3|u1|Reg4_Out\(2) $ (((\u3|u0|u3|u1|Reg4_Out\(1) & \u3|u0|u3|u1|Reg4_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u3|u1|Reg4_Out\(1),
	datab => \u3|u0|u3|u1|Reg4_Out\(0),
	datac => \u3|u0|u3|u1|Reg4_Out\(2),
	combout => \u3|u0|u3|u1|Reg4_Out[2]~1_combout\);

-- Location: FF_X44_Y42_N13
\u3|u0|u3|u1|Reg4_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u3|u1|Reg4_Out[2]~1_combout\,
	clrn => \u3|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u3|u1|Reg4_Out\(2));

-- Location: LCCOMB_X44_Y42_N10
\u3|u0|u3|u1|Reg4_Out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u3|u1|Reg4_Out[3]~0_combout\ = \u3|u0|u3|u1|Reg4_Out\(3) $ (((\u3|u0|u3|u1|Reg4_Out\(1) & (\u3|u0|u3|u1|Reg4_Out\(0) & \u3|u0|u3|u1|Reg4_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u3|u1|Reg4_Out\(1),
	datab => \u3|u0|u3|u1|Reg4_Out\(0),
	datac => \u3|u0|u3|u1|Reg4_Out\(3),
	datad => \u3|u0|u3|u1|Reg4_Out\(2),
	combout => \u3|u0|u3|u1|Reg4_Out[3]~0_combout\);

-- Location: FF_X44_Y42_N11
\u3|u0|u3|u1|Reg4_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u3|u1|Reg4_Out[3]~0_combout\,
	clrn => \u3|u0|u0|ALT_INV_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u3|u1|Reg4_Out\(3));

-- Location: LCCOMB_X44_Y42_N24
\u3|u0|pFlag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|pFlag~0_combout\ = (!\u3|u0|u3|u1|Reg4_Out\(1) & (!\auto_hub|instrumentat
-- ion_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & (\u3|u0|u3|u1|Reg4_Out\(3) & !\u3|u0|u3|u1|Reg4_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u3|u1|Reg4_Out\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \u3|u0|u3|u1|Reg4_Out\(3),
	datad => \u3|u0|u3|u1|Reg4_Out\(2),
	combout => \u3|u0|pFlag~0_combout\);

-- Location: LCCOMB_X45_Y42_N8
\u3|u0|u0|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_0~0_combout\ = (\u3|u0|u0|state.state_bit_0~q\ & ((!\u3|u0|pFlag~0_combout\) # (!\u3|u0|u3|u1|Reg4_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u3|u1|Reg4_Out\(0),
	datab => \u3|u0|pFlag~0_combout\,
	datac => \u3|u0|u0|state.state_bit_0~q\,
	combout => \u3|u0|u0|state.state_bit_0~0_combout\);

-- Location: LCCOMB_X45_Y42_N30
\u3|u0|u0|state.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_0~1_combout\ = (!\u3|u0|u0|state.state_bit_2~q\ & ((\u3|u0|u0|state.state_bit_1~q\ & ((\u3|u0|u0|state.state_bit_0~0_combout\))) # (!\u3|u0|u0|state.state_bit_1~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \u3|u0|u0|state.state_bit_1~q\,
	datac => \u3|u0|u0|state.state_bit_0~0_combout\,
	datad => \u3|u0|u0|state.state_bit_2~q\,
	combout => \u3|u0|u0|state.state_bit_0~1_combout\);

-- Location: FF_X45_Y42_N31
\u3|u0|u0|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|u0|u0|state.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u0|state.state_bit_0~q\);

-- Location: LCCOMB_X45_Y42_N20
\u3|u0|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u2|Q~0_combout\ = !\u3|u0|u2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u2|Q~q\,
	combout => \u3|u0|u2|Q~0_combout\);

-- Location: FF_X45_Y42_N21
\u3|u0|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u2|Q~0_combout\,
	clrn => \u3|u0|u0|ALT_INV_state.start~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u2|Q~q\);

-- Location: LCCOMB_X45_Y42_N6
\u3|u0|u0|state.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_1~1_combout\ = (\u3|u0|u0|state.state_bit_0~q\ & (!\u3|u0|u2|Q~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & \u3|u0|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.state_bit_0~q\,
	datab => \u3|u0|u2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datad => \u3|u0|u0|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.state_bit_1~1_combout\);

-- Location: LCCOMB_X45_Y42_N10
\u3|u1|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|state.state_bit_1~0_combout\ = (\u3|u1|state.state_bit_1~q\ & (\u3|u1|state.state_bit_0~q\ & ((\u3|u0|u0|state.output_data~0_combout\) # (\u3|u1|state.enable~0_combout\)))) # (!\u3|u1|state.state_bit_1~q\ & (((\u3|u1|state.enable~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.output_data~0_combout\,
	datab => \u3|u1|state.enable~0_combout\,
	datac => \u3|u1|state.state_bit_1~q\,
	datad => \u3|u1|state.state_bit_0~q\,
	combout => \u3|u1|state.state_bit_1~0_combout\);

-- Location: FF_X45_Y42_N11
\u3|u1|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|u1|state.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|state.state_bit_1~q\);

-- Location: LCCOMB_X45_Y42_N2
\u3|u0|u0|state.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_1~0_combout\ = (\u3|u0|u0|state.state_bit_0~q\ & (\u3|u0|u0|state.state_bit_2~q\)) # (!\u3|u0|u0|state.state_bit_0~q\ & (((\u3|u0|u0|state.state_bit_2~q\ & !\u3|u1|state.state_bit_1~q\)) # (!\u3|u0|u0|state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.state_bit_2~q\,
	datab => \u3|u0|u0|state.state_bit_1~q\,
	datac => \u3|u0|u0|state.state_bit_0~q\,
	datad => \u3|u1|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.state_bit_1~0_combout\);

-- Location: LCCOMB_X45_Y42_N26
\u3|u0|u0|state.wait_for_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.wait_for_data~0_combout\ = (\u3|u0|u0|state.state_bit_0~q\ & !\u3|u0|u0|state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u0|state.state_bit_0~q\,
	datad => \u3|u0|u0|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.wait_for_data~0_combout\);

-- Location: LCCOMB_X45_Y42_N16
\u3|u0|u0|state.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_1~2_combout\ = (\u3|u0|pFlag~0_combout\ & ((\u3|u0|u3|u1|Reg4_Out\(0)) # ((\u3|u0|u0|state.wait_for_data~0_combout\ & 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\)))) # (!\u3|u0|pFlag~0_combout\ & 
-- (((\u3|u0|u0|state.wait_for_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u3|u1|Reg4_Out\(0),
	datab => \u3|u0|pFlag~0_combout\,
	datac => \u3|u0|u0|state.wait_for_data~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \u3|u0|u0|state.state_bit_1~2_combout\);

-- Location: LCCOMB_X45_Y42_N0
\u3|u0|u0|state.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_1~3_combout\ = (!\u3|u0|u0|state.state_bit_1~0_combout\ & (((!\u3|u0|u0|state.state_bit_1~1_combout\ & !\u3|u0|u0|state.wait_for_data~0_combout\)) # (!\u3|u0|u0|state.state_bit_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.state_bit_1~1_combout\,
	datab => \u3|u0|u0|state.state_bit_1~0_combout\,
	datac => \u3|u0|u0|state.wait_for_data~0_combout\,
	datad => \u3|u0|u0|state.state_bit_1~2_combout\,
	combout => \u3|u0|u0|state.state_bit_1~3_combout\);

-- Location: FF_X45_Y42_N1
\u3|u0|u0|state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|u0|u0|state.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u0|state.state_bit_1~q\);

-- Location: LCCOMB_X45_Y42_N12
\u3|u0|u0|state.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.state_bit_2~0_combout\ = (\u3|u0|u0|state.state_bit_1~q\ & (!\u3|u0|u0|state.state_bit_0~q\ & \u3|u1|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u0|u0|state.state_bit_1~q\,
	datac => \u3|u0|u0|state.state_bit_0~q\,
	datad => \u3|u1|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.state_bit_2~0_combout\);

-- Location: FF_X45_Y42_N13
\u3|u0|u0|state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|u0|u0|state.state_bit_2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u0|state.state_bit_2~q\);

-- Location: LCCOMB_X45_Y42_N22
\u3|u0|u0|state.output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u0|state.output_data~0_combout\ = (!\u3|u0|u0|state.state_bit_2~q\ & (!\u3|u0|u0|state.state_bit_0~q\ & \u3|u0|u0|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.state_bit_2~q\,
	datac => \u3|u0|u0|state.state_bit_0~q\,
	datad => \u3|u0|u0|state.state_bit_1~q\,
	combout => \u3|u0|u0|state.output_data~0_combout\);

-- Location: LCCOMB_X45_Y42_N24
\u3|u1|state.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|state.state_bit_0~0_combout\ = (\u3|u0|u0|state.output_data~0_combout\ & ((\u3|u1|state.state_bit_0~q\) # (!\u3|u1|state.state_bit_1~q\))) # (!\u3|u0|u0|state.output_data~0_combout\ & (\u3|u1|state.state_bit_0~q\ & !\u3|u1|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u0|state.output_data~0_combout\,
	datac => \u3|u1|state.state_bit_0~q\,
	datad => \u3|u1|state.state_bit_1~q\,
	combout => \u3|u1|state.state_bit_0~0_combout\);

-- Location: FF_X45_Y42_N25
\u3|u1|state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|u1|state.state_bit_0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|state.state_bit_0~q\);

-- Location: LCCOMB_X45_Y42_N4
\u3|u1|state.enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u1|state.enable~0_combout\ = LCELL((\u3|u1|state.state_bit_0~q\ & !\u3|u1|state.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|state.state_bit_0~q\,
	datad => \u3|u1|state.state_bit_1~q\,
	combout => \u3|u1|state.enable~0_combout\);

-- Location: CLKCTRL_G14
\u3|u1|state.enable~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|u1|state.enable~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|u1|state.enable~0clkctrl_outclk\);

-- Location: LCCOMB_X66_Y43_N6
\u3|u0|u1|D[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[7]~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \u3|u0|u1|D[7]~feeder_combout\);

-- Location: FF_X66_Y43_N7
\u3|u0|u1|D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(7));

-- Location: LCCOMB_X66_Y43_N12
\u3|u0|u1|D[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[6]~feeder_combout\ = \u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(7),
	combout => \u3|u0|u1|D[6]~feeder_combout\);

-- Location: FF_X66_Y43_N13
\u3|u0|u1|D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(6));

-- Location: LCCOMB_X66_Y43_N26
\u3|u0|u1|D[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[5]~feeder_combout\ = \u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(6),
	combout => \u3|u0|u1|D[5]~feeder_combout\);

-- Location: FF_X66_Y43_N27
\u3|u0|u1|D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(5));

-- Location: LCCOMB_X66_Y43_N18
\u3|u0|u1|D[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[4]~feeder_combout\ = \u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(5),
	combout => \u3|u0|u1|D[4]~feeder_combout\);

-- Location: FF_X66_Y43_N19
\u3|u0|u1|D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(4));

-- Location: LCCOMB_X67_Y46_N14
\u4|circuit_gen:0:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:0:in_reg|U1|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N14
\u3|u0|u1|D[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[3]~feeder_combout\ = \u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(4),
	combout => \u3|u0|u1|D[3]~feeder_combout\);

-- Location: FF_X66_Y43_N15
\u3|u0|u1|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(3));

-- Location: LCCOMB_X66_Y43_N30
\u3|u0|u1|D[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[2]~feeder_combout\ = \u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(3),
	combout => \u3|u0|u1|D[2]~feeder_combout\);

-- Location: FF_X66_Y43_N31
\u3|u0|u1|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(2));

-- Location: LCCOMB_X66_Y43_N4
\u3|u0|u1|D[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|u0|u1|D[1]~feeder_combout\ = \u3|u0|u1|D\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(2),
	combout => \u3|u0|u1|D[1]~feeder_combout\);

-- Location: FF_X66_Y43_N5
\u3|u0|u1|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \u3|u0|u1|D[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(1));

-- Location: FF_X66_Y43_N1
\u3|u0|u1|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \u3|u0|u1|D\(1),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \u3|u0|u0|state.wait_for_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|u1|D\(0));

-- Location: LCCOMB_X66_Y43_N24
\u4|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout\(0) = (!\u3|u0|u1|D\(2) & (!\u3|u0|u1|D\(0) & !\u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout\(0));

-- Location: FF_X67_Y46_N15
\u4|circuit_gen:0:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:0:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:in_reg|U1|Q~q\);

-- Location: LCCOMB_X66_Y43_N2
\u4|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[6]~0_combout\ = (\u3|u0|u1|D\(2) & (!\u3|u0|u1|D\(0) & \u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout[6]~0_combout\);

-- Location: FF_X67_Y50_N15
\u4|circuit_gen:0:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:0:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:out_reg|U1|Q~q\);

-- Location: LCCOMB_X67_Y46_N28
\u4|circuit_gen:0:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:0:in_reg|U2|Q~0_combout\);

-- Location: FF_X67_Y46_N29
\u4|circuit_gen:0:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:0:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:in_reg|U2|Q~q\);

-- Location: FF_X67_Y50_N13
\u4|circuit_gen:0:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:0:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:out_reg|U2|Q~q\);

-- Location: LCCOMB_X67_Y46_N2
\u4|circuit_gen:0:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:0:in_reg|U3|Q~0_combout\);

-- Location: FF_X67_Y46_N3
\u4|circuit_gen:0:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:0:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:in_reg|U3|Q~q\);

-- Location: FF_X67_Y50_N19
\u4|circuit_gen:0:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:0:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:out_reg|U3|Q~q\);

-- Location: LCCOMB_X67_Y46_N0
\u4|circuit_gen:0:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:0:in_reg|U0|Q~0_combout\);

-- Location: FF_X67_Y46_N1
\u4|circuit_gen:0:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:0:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:in_reg|U0|Q~q\);

-- Location: FF_X67_Y50_N25
\u4|circuit_gen:0:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:0:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:out_reg|U0|Q~q\);

-- Location: LCCOMB_X67_Y50_N8
\u4|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & (\u4|circuit_gen:0:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:0:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & 
-- (\u4|circuit_gen:0:out_reg|U1|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ $ (!\u4|circuit_gen:0:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N20
\u4|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:0:out_reg|U3|Q~q\ & \u4|circuit_gen:0:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X66_Y43_N16
\u4|clear_reg|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|clear_reg|Q~0_combout\ = (\u3|u0|u1|D\(2) & (\u3|u0|u1|D\(0) & \u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|clear_reg|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N28
\u4|clear_reg|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|clear_reg|Q~1_combout\ = (\u4|clear_reg|Q~0_combout\ & (!\u3|u0|u1|D\(3))) # (!\u4|clear_reg|Q~0_combout\ & ((\u4|clear_reg|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u0|u1|D\(3),
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|clear_reg|Q~0_combout\,
	combout => \u4|clear_reg|Q~1_combout\);

-- Location: FF_X66_Y43_N29
\u4|clear_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|clear_reg|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|clear_reg|Q~q\);

-- Location: LCCOMB_X67_Y46_N16
\u4|circuit_gen:0:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:0:in_reg|U4|Q~0_combout\);

-- Location: FF_X67_Y46_N17
\u4|circuit_gen:0:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:0:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:in_reg|U4|Q~q\);

-- Location: FF_X67_Y50_N27
\u4|circuit_gen:0:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:0:in_reg|U4|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:0:out_reg|U4|Q~q\);

-- Location: LCCOMB_X67_Y50_N22
\u4|circuit_gen:0:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & (\u4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\)) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X67_Y50_N10
\u4|circuit_gen:0:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:0:out_reg|U0|Q~q\ & (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & (!\u4|circuit_gen:0:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:0:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:0:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X67_Y50_N0
\u4|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:0:out_reg|U1|Q~q\ & (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ $ (\u4|circuit_gen:0:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & 
-- ((\u4|circuit_gen:0:out_reg|U0|Q~q\ & (!\u4|circuit_gen:0:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:0:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X67_Y50_N28
\u4|circuit_gen:0:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((\u4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\))) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & (!\u4|circuit_gen:0:hex_digit|Ndout[1]~4_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:hex_digit|Ndout[1]~4_combout\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X69_Y50_N8
\u4|circuit_gen:0:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:0:out_reg|U3|Q~q\ & (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U0|Q~q\ & !\u4|circuit_gen:0:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & ((\u4|circuit_gen:0:out_reg|U0|Q~q\) # (!\u4|circuit_gen:0:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X69_Y50_N10
\u4|circuit_gen:0:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & ((\u4|circuit_gen:0:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:0:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X69_Y50_N4
\u4|circuit_gen:0:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & (\u4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\)) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:0:hex_digit|Ndout[2]~7_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\,
	datad => \u4|circuit_gen:0:hex_digit|Ndout[2]~7_combout\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X69_Y50_N24
\u4|circuit_gen:0:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:0:out_reg|U1|Q~q\ & ((\u4|circuit_gen:0:out_reg|U3|Q~q\ & (!\u4|circuit_gen:0:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U3|Q~q\ & ((\u4|circuit_gen:0:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X69_Y50_N6
\u4|circuit_gen:0:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:0:out_reg|U0|Q~q\ & ((\u4|circuit_gen:0:out_reg|U3|Q~q\ & (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & \u4|circuit_gen:0:out_reg|U1|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:0:out_reg|U2|Q~q\ & !\u4|circuit_gen:0:out_reg|U1|Q~q\)))) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & ((\u4|circuit_gen:0:out_reg|U2|Q~q\ $ (!\u4|circuit_gen:0:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X69_Y50_N26
\u4|circuit_gen:0:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((\u4|circuit_gen:0:hex_digit|Ndout[3]~9_combout\))) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & (!\u4|circuit_gen:0:hex_digit|Ndout[3]~10_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[3]~10_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:0:hex_digit|Ndout[3]~9_combout\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X67_Y50_N30
\u4|circuit_gen:0:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:0:out_reg|U1|Q~q\ & ((\u4|circuit_gen:0:out_reg|U2|Q~q\ & ((!\u4|circuit_gen:0:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\)))) # 
-- (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & (((\u4|circuit_gen:0:out_reg|U3|Q~q\ & !\u4|circuit_gen:0:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X67_Y50_N16
\u4|circuit_gen:0:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:0:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:0:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:0:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X67_Y50_N2
\u4|circuit_gen:0:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & (\u4|circuit_gen:0:hex_digit|Ndout[4]~12_combout\)) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:0:hex_digit|Ndout[4]~13_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:hex_digit|Ndout[4]~12_combout\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[4]~13_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X67_Y50_N18
\u4|circuit_gen:0:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:0:out_reg|U1|Q~q\ & ((\u4|circuit_gen:0:out_reg|U0|Q~q\ & (\u4|circuit_gen:0:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & ((\u4|circuit_gen:0:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X67_Y50_N24
\u4|circuit_gen:0:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:0:out_reg|U1|Q~q\) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:0:out_reg|U2|Q~q\ & 
-- (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & (\u4|circuit_gen:0:out_reg|U3|Q~q\ $ (\u4|circuit_gen:0:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X67_Y50_N4
\u4|circuit_gen:0:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:0:out_reg|U4|Q~q\ & ((\u4|circuit_gen:0:hex_digit|Ndout[5]~15_combout\))) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & (!\u4|circuit_gen:0:hex_digit|Ndout[5]~16_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[5]~16_combout\,
	datac => \u4|circuit_gen:0:hex_digit|Ndout[5]~15_combout\,
	datad => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X67_Y50_N14
\u4|circuit_gen:0:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[6]~19_combout\ = (!\u4|circuit_gen:0:out_reg|U4|Q~q\ & (\u4|circuit_gen:0:out_reg|U2|Q~q\ & (\u4|circuit_gen:0:out_reg|U1|Q~q\ & \u4|circuit_gen:0:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X67_Y50_N12
\u4|circuit_gen:0:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:0:out_reg|U0|Q~q\ & ((\u4|circuit_gen:0:out_reg|U3|Q~q\ $ (\u4|circuit_gen:0:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:0:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:0:out_reg|U2|Q~q\ $ (\u4|circuit_gen:0:out_reg|U1|Q~q\)) # (!\u4|circuit_gen:0:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:0:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:0:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:0:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:0:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X67_Y50_N26
\u4|circuit_gen:0:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:0:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:0:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:0:hex_digit|Ndout[6]~18_combout\) # (!\u4|circuit_gen:0:out_reg|U4|Q~q\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:0:hex_digit|Ndout[6]~19_combout\,
	datac => \u4|circuit_gen:0:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:0:hex_digit|Ndout[6]~18_combout\,
	combout => \u4|circuit_gen:0:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X67_Y46_N24
\u4|circuit_gen:1:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:1:in_reg|U1|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N22
\u4|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[1]~1_combout\ = (!\u3|u0|u1|D\(2) & (\u3|u0|u1|D\(0) & !\u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout[1]~1_combout\);

-- Location: FF_X67_Y46_N25
\u4|circuit_gen:1:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:in_reg|U1|Q~q\);

-- Location: FF_X69_Y49_N31
\u4|circuit_gen:1:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:1:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:out_reg|U1|Q~q\);

-- Location: LCCOMB_X67_Y46_N12
\u4|circuit_gen:1:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:1:in_reg|U3|Q~0_combout\);

-- Location: FF_X67_Y46_N13
\u4|circuit_gen:1:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:in_reg|U3|Q~q\);

-- Location: FF_X69_Y49_N19
\u4|circuit_gen:1:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:1:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:out_reg|U3|Q~q\);

-- Location: LCCOMB_X67_Y46_N26
\u4|circuit_gen:1:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:1:in_reg|U0|Q~0_combout\);

-- Location: FF_X67_Y46_N27
\u4|circuit_gen:1:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:in_reg|U0|Q~q\);

-- Location: FF_X69_Y49_N9
\u4|circuit_gen:1:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:1:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:out_reg|U0|Q~q\);

-- Location: LCCOMB_X67_Y46_N22
\u4|circuit_gen:1:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:1:in_reg|U2|Q~0_combout\);

-- Location: FF_X67_Y46_N23
\u4|circuit_gen:1:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:in_reg|U2|Q~q\);

-- Location: FF_X69_Y49_N13
\u4|circuit_gen:1:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:1:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:out_reg|U2|Q~q\);

-- Location: LCCOMB_X69_Y49_N10
\u4|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:1:out_reg|U2|Q~q\ & (\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:1:out_reg|U3|Q~q\ & \u4|circuit_gen:1:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X69_Y49_N24
\u4|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:1:out_reg|U3|Q~q\ & (\u4|circuit_gen:1:out_reg|U1|Q~q\ & (\u4|circuit_gen:1:out_reg|U0|Q~q\ $ (\u4|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (\u4|circuit_gen:1:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X67_Y46_N10
\u4|circuit_gen:1:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:1:in_reg|U4|Q~0_combout\);

-- Location: FF_X67_Y46_N11
\u4|circuit_gen:1:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:in_reg|U4|Q~q\);

-- Location: LCCOMB_X70_Y49_N24
\u4|circuit_gen:1:out_reg|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:out_reg|U4|Q~feeder_combout\ = \u4|circuit_gen:1:in_reg|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|circuit_gen:1:in_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:out_reg|U4|Q~feeder_combout\);

-- Location: FF_X70_Y49_N25
\u4|circuit_gen:1:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:1:out_reg|U4|Q~feeder_combout\,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:1:out_reg|U4|Q~q\);

-- Location: LCCOMB_X70_Y49_N2
\u4|circuit_gen:1:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((\u4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\))) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & (!\u4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	datab => \u4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X69_Y49_N22
\u4|circuit_gen:1:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:1:out_reg|U0|Q~q\ & (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:1:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X69_Y49_N4
\u4|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:1:out_reg|U1|Q~q\ & (!\u4|circuit_gen:1:out_reg|U2|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ $ (\u4|circuit_gen:1:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & 
-- ((\u4|circuit_gen:1:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (!\u4|circuit_gen:1:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X70_Y49_N20
\u4|circuit_gen:1:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((\u4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\))) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & (!\u4|circuit_gen:1:hex_digit|Ndout[1]~4_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:1:hex_digit|Ndout[1]~4_combout\,
	datac => \u4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X69_Y49_N16
\u4|circuit_gen:1:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:1:out_reg|U3|Q~q\ & (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & (\u4|circuit_gen:1:out_reg|U0|Q~q\ & \u4|circuit_gen:1:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:1:out_reg|U2|Q~q\ & ((\u4|circuit_gen:1:out_reg|U0|Q~q\) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X69_Y49_N26
\u4|circuit_gen:1:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:1:out_reg|U2|Q~q\ & ((\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X70_Y49_N30
\u4|circuit_gen:1:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & (\u4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\)) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:1:hex_digit|Ndout[2]~7_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:1:hex_digit|Ndout[2]~7_combout\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X69_Y49_N14
\u4|circuit_gen:1:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((\u4|circuit_gen:1:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U3|Q~q\ & (\u4|circuit_gen:1:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X69_Y49_N28
\u4|circuit_gen:1:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:1:out_reg|U0|Q~q\ & ((\u4|circuit_gen:1:out_reg|U1|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ & !\u4|circuit_gen:1:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & 
-- (!\u4|circuit_gen:1:out_reg|U3|Q~q\ & \u4|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (((!\u4|circuit_gen:1:out_reg|U2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X69_Y49_N0
\u4|circuit_gen:1:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((\u4|circuit_gen:1:hex_digit|Ndout[3]~9_combout\))) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & (!\u4|circuit_gen:1:hex_digit|Ndout[3]~10_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[3]~10_combout\,
	datab => \u4|circuit_gen:1:hex_digit|Ndout[3]~9_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X69_Y49_N2
\u4|circuit_gen:1:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((\u4|circuit_gen:1:out_reg|U2|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U2|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\)))) # 
-- (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ & (!\u4|circuit_gen:1:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X69_Y49_N20
\u4|circuit_gen:1:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:1:out_reg|U2|Q~q\ & (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:1:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U2|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:1:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X69_Y49_N6
\u4|circuit_gen:1:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & (\u4|circuit_gen:1:hex_digit|Ndout[4]~12_combout\)) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:1:hex_digit|Ndout[4]~13_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[4]~12_combout\,
	datab => \u4|circuit_gen:1:hex_digit|Ndout[4]~13_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X69_Y49_N8
\u4|circuit_gen:1:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:1:out_reg|U1|Q~q\ & (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\ $ (!\u4|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & 
-- (\u4|circuit_gen:1:out_reg|U3|Q~q\ & ((\u4|circuit_gen:1:out_reg|U2|Q~q\) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X69_Y49_N18
\u4|circuit_gen:1:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:1:out_reg|U1|Q~q\ & ((\u4|circuit_gen:1:out_reg|U0|Q~q\ & ((\u4|circuit_gen:1:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X70_Y49_N0
\u4|circuit_gen:1:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:1:out_reg|U4|Q~q\ & (\u4|circuit_gen:1:hex_digit|Ndout[5]~15_combout\)) # (!\u4|circuit_gen:1:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:1:hex_digit|Ndout[5]~16_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[5]~15_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:1:hex_digit|Ndout[5]~16_combout\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X69_Y49_N12
\u4|circuit_gen:1:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:1:out_reg|U0|Q~q\ & ((\u4|circuit_gen:1:out_reg|U2|Q~q\ $ (\u4|circuit_gen:1:out_reg|U3|Q~q\)) # (!\u4|circuit_gen:1:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:1:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:1:out_reg|U1|Q~q\ $ (\u4|circuit_gen:1:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:1:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X69_Y49_N30
\u4|circuit_gen:1:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[6]~19_combout\ = (\u4|circuit_gen:1:out_reg|U2|Q~q\ & (\u4|circuit_gen:1:out_reg|U0|Q~q\ & (\u4|circuit_gen:1:out_reg|U1|Q~q\ & !\u4|circuit_gen:1:out_reg|U4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:out_reg|U2|Q~q\,
	datab => \u4|circuit_gen:1:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:1:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X70_Y49_N10
\u4|circuit_gen:1:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:1:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:1:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:1:out_reg|U4|Q~q\) # (!\u4|circuit_gen:1:hex_digit|Ndout[6]~18_combout\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:1:hex_digit|Ndout[6]~18_combout\,
	datab => \u4|circuit_gen:1:hex_digit|Ndout[6]~19_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:1:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:1:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X66_Y40_N26
\u4|circuit_gen:2:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:2:in_reg|U3|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N8
\u4|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[2]~2_combout\ = (!\u3|u0|u1|D\(2) & (!\u3|u0|u1|D\(0) & \u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout[2]~2_combout\);

-- Location: FF_X66_Y40_N27
\u4|circuit_gen:2:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:in_reg|U3|Q~q\);

-- Location: FF_X63_Y40_N27
\u4|circuit_gen:2:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:2:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:out_reg|U3|Q~q\);

-- Location: LCCOMB_X66_Y40_N12
\u4|circuit_gen:2:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:2:in_reg|U2|Q~0_combout\);

-- Location: FF_X66_Y40_N13
\u4|circuit_gen:2:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:in_reg|U2|Q~q\);

-- Location: FF_X63_Y40_N29
\u4|circuit_gen:2:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:2:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:out_reg|U2|Q~q\);

-- Location: LCCOMB_X66_Y40_N22
\u4|circuit_gen:2:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:2:in_reg|U1|Q~0_combout\);

-- Location: FF_X66_Y40_N23
\u4|circuit_gen:2:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:in_reg|U1|Q~q\);

-- Location: FF_X63_Y40_N15
\u4|circuit_gen:2:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:2:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:out_reg|U1|Q~q\);

-- Location: LCCOMB_X66_Y40_N8
\u4|circuit_gen:2:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:2:in_reg|U0|Q~0_combout\);

-- Location: FF_X66_Y40_N9
\u4|circuit_gen:2:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:in_reg|U0|Q~q\);

-- Location: FF_X63_Y40_N1
\u4|circuit_gen:2:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:2:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:out_reg|U0|Q~q\);

-- Location: LCCOMB_X63_Y40_N10
\u4|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:2:out_reg|U2|Q~q\ & (\u4|circuit_gen:2:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:2:out_reg|U3|Q~q\ & \u4|circuit_gen:2:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X66_Y40_N24
\u4|circuit_gen:2:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:2:in_reg|U4|Q~0_combout\);

-- Location: FF_X66_Y40_N25
\u4|circuit_gen:2:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:in_reg|U4|Q~q\);

-- Location: LCCOMB_X64_Y40_N0
\u4|circuit_gen:2:out_reg|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:out_reg|U4|Q~feeder_combout\ = \u4|circuit_gen:2:in_reg|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|circuit_gen:2:in_reg|U4|Q~q\,
	combout => \u4|circuit_gen:2:out_reg|U4|Q~feeder_combout\);

-- Location: FF_X64_Y40_N1
\u4|circuit_gen:2:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:2:out_reg|U4|Q~feeder_combout\,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:2:out_reg|U4|Q~q\);

-- Location: LCCOMB_X63_Y40_N8
\u4|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:2:out_reg|U3|Q~q\ & (\u4|circuit_gen:2:out_reg|U1|Q~q\ & (\u4|circuit_gen:2:out_reg|U2|Q~q\ $ (\u4|circuit_gen:2:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & (\u4|circuit_gen:2:out_reg|U2|Q~q\ $ (\u4|circuit_gen:2:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X64_Y40_N2
\u4|circuit_gen:2:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((\u4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\))) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & (!\u4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	datab => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X63_Y40_N12
\u4|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:2:out_reg|U3|Q~q\ & (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & (\u4|circuit_gen:2:out_reg|U1|Q~q\ $ (\u4|circuit_gen:2:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- ((\u4|circuit_gen:2:out_reg|U0|Q~q\ & (!\u4|circuit_gen:2:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:2:out_reg|U1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X63_Y40_N30
\u4|circuit_gen:2:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:2:out_reg|U0|Q~q\ & (((!\u4|circuit_gen:2:out_reg|U2|Q~q\ & !\u4|circuit_gen:2:out_reg|U1|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:2:out_reg|U2|Q~q\ $ (!\u4|circuit_gen:2:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X64_Y40_N28
\u4|circuit_gen:2:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & (\u4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\)) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:2:hex_digit|Ndout[1]~4_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	datab => \u4|circuit_gen:2:hex_digit|Ndout[1]~4_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X63_Y40_N18
\u4|circuit_gen:2:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & ((\u4|circuit_gen:2:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:2:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:2:out_reg|U1|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X63_Y40_N16
\u4|circuit_gen:2:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:2:out_reg|U3|Q~q\ & (\u4|circuit_gen:2:out_reg|U2|Q~q\ & (!\u4|circuit_gen:2:out_reg|U1|Q~q\ & \u4|circuit_gen:2:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & ((\u4|circuit_gen:2:out_reg|U0|Q~q\) # (!\u4|circuit_gen:2:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X63_Y40_N20
\u4|circuit_gen:2:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((\u4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\))) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & (!\u4|circuit_gen:2:hex_digit|Ndout[2]~7_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[2]~7_combout\,
	datab => \u4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\,
	datac => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datad => \u4|clear_reg|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X63_Y40_N24
\u4|circuit_gen:2:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:2:out_reg|U1|Q~q\ & ((\u4|circuit_gen:2:out_reg|U3|Q~q\ & (!\u4|circuit_gen:2:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\ & ((\u4|circuit_gen:2:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X63_Y40_N6
\u4|circuit_gen:2:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:2:out_reg|U0|Q~q\ & ((\u4|circuit_gen:2:out_reg|U3|Q~q\ & (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & \u4|circuit_gen:2:out_reg|U1|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:2:out_reg|U2|Q~q\ & !\u4|circuit_gen:2:out_reg|U1|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & ((\u4|circuit_gen:2:out_reg|U2|Q~q\ $ (!\u4|circuit_gen:2:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X64_Y40_N6
\u4|circuit_gen:2:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((\u4|circuit_gen:2:hex_digit|Ndout[3]~9_combout\))) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & (!\u4|circuit_gen:2:hex_digit|Ndout[3]~10_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:2:hex_digit|Ndout[3]~10_combout\,
	datac => \u4|circuit_gen:2:hex_digit|Ndout[3]~9_combout\,
	datad => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X63_Y40_N4
\u4|circuit_gen:2:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:2:out_reg|U2|Q~q\ & (((!\u4|circuit_gen:2:out_reg|U1|Q~q\ & !\u4|circuit_gen:2:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:2:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:2:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X63_Y40_N2
\u4|circuit_gen:2:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:2:out_reg|U1|Q~q\ & ((\u4|circuit_gen:2:out_reg|U2|Q~q\ & ((!\u4|circuit_gen:2:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\)))) # 
-- (!\u4|circuit_gen:2:out_reg|U1|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:2:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X63_Y40_N22
\u4|circuit_gen:2:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((\u4|circuit_gen:2:hex_digit|Ndout[4]~12_combout\))) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & (!\u4|circuit_gen:2:hex_digit|Ndout[4]~13_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[4]~13_combout\,
	datab => \u4|circuit_gen:2:hex_digit|Ndout[4]~12_combout\,
	datac => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datad => \u4|clear_reg|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X63_Y40_N0
\u4|circuit_gen:2:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:2:out_reg|U2|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:2:out_reg|U1|Q~q\) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:2:out_reg|U2|Q~q\ & 
-- (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & (\u4|circuit_gen:2:out_reg|U3|Q~q\ $ (\u4|circuit_gen:2:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X63_Y40_N26
\u4|circuit_gen:2:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:2:out_reg|U1|Q~q\ & ((\u4|circuit_gen:2:out_reg|U0|Q~q\ & (\u4|circuit_gen:2:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & ((\u4|circuit_gen:2:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X64_Y40_N24
\u4|circuit_gen:2:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:2:out_reg|U4|Q~q\ & (\u4|circuit_gen:2:hex_digit|Ndout[5]~15_combout\)) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:2:hex_digit|Ndout[5]~16_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[5]~15_combout\,
	datab => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:2:hex_digit|Ndout[5]~16_combout\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X63_Y40_N14
\u4|circuit_gen:2:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[6]~19_combout\ = (\u4|circuit_gen:2:out_reg|U0|Q~q\ & (!\u4|circuit_gen:2:out_reg|U4|Q~q\ & (\u4|circuit_gen:2:out_reg|U1|Q~q\ & \u4|circuit_gen:2:out_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X63_Y40_N28
\u4|circuit_gen:2:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:2:out_reg|U0|Q~q\ & ((\u4|circuit_gen:2:out_reg|U3|Q~q\ $ (\u4|circuit_gen:2:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:2:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:2:out_reg|U1|Q~q\ $ (\u4|circuit_gen:2:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:2:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:out_reg|U3|Q~q\,
	datab => \u4|circuit_gen:2:out_reg|U1|Q~q\,
	datac => \u4|circuit_gen:2:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X64_Y40_N10
\u4|circuit_gen:2:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:2:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:2:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:2:hex_digit|Ndout[6]~18_combout\) # (!\u4|circuit_gen:2:out_reg|U4|Q~q\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:2:hex_digit|Ndout[6]~19_combout\,
	datab => \u4|circuit_gen:2:out_reg|U4|Q~q\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:2:hex_digit|Ndout[6]~18_combout\,
	combout => \u4|circuit_gen:2:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X66_Y40_N2
\u4|circuit_gen:3:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:3:in_reg|U4|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\u4|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[3]~3_combout\ = (!\u3|u0|u1|D\(2) & (\u3|u0|u1|D\(0) & \u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout[3]~3_combout\);

-- Location: FF_X66_Y40_N3
\u4|circuit_gen:3:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:3:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:in_reg|U4|Q~q\);

-- Location: FF_X71_Y39_N11
\u4|circuit_gen:3:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:3:in_reg|U4|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:out_reg|U4|Q~q\);

-- Location: LCCOMB_X66_Y40_N16
\u4|circuit_gen:3:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:3:in_reg|U1|Q~0_combout\);

-- Location: FF_X66_Y40_N17
\u4|circuit_gen:3:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:3:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:in_reg|U1|Q~q\);

-- Location: FF_X71_Y39_N7
\u4|circuit_gen:3:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:3:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:out_reg|U1|Q~q\);

-- Location: LCCOMB_X66_Y40_N28
\u4|circuit_gen:3:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:3:in_reg|U3|Q~0_combout\);

-- Location: FF_X66_Y40_N29
\u4|circuit_gen:3:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:3:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:in_reg|U3|Q~q\);

-- Location: FF_X71_Y39_N19
\u4|circuit_gen:3:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:3:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:out_reg|U3|Q~q\);

-- Location: LCCOMB_X66_Y40_N18
\u4|circuit_gen:3:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:3:in_reg|U0|Q~0_combout\);

-- Location: FF_X66_Y40_N19
\u4|circuit_gen:3:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:3:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:in_reg|U0|Q~q\);

-- Location: FF_X71_Y39_N9
\u4|circuit_gen:3:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:3:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:out_reg|U0|Q~q\);

-- Location: LCCOMB_X66_Y40_N30
\u4|circuit_gen:3:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:3:in_reg|U2|Q~0_combout\);

-- Location: FF_X66_Y40_N31
\u4|circuit_gen:3:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:3:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:in_reg|U2|Q~q\);

-- Location: FF_X71_Y39_N29
\u4|circuit_gen:3:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:3:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:3:out_reg|U2|Q~q\);

-- Location: LCCOMB_X71_Y39_N16
\u4|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:3:out_reg|U3|Q~q\ & (\u4|circuit_gen:3:out_reg|U1|Q~q\ & (\u4|circuit_gen:3:out_reg|U0|Q~q\ $ (\u4|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (\u4|circuit_gen:3:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y39_N12
\u4|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:3:out_reg|U2|Q~q\ & (\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:3:out_reg|U3|Q~q\ & \u4|circuit_gen:3:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y39_N0
\u4|circuit_gen:3:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & (\u4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\)) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X71_Y39_N0
\u4|circuit_gen:3:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:3:out_reg|U0|Q~q\ & (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:3:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X71_Y39_N14
\u4|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:3:out_reg|U1|Q~q\ & (!\u4|circuit_gen:3:out_reg|U2|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ $ (\u4|circuit_gen:3:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & 
-- ((\u4|circuit_gen:3:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (!\u4|circuit_gen:3:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y39_N10
\u4|circuit_gen:3:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((\u4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\))) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & (!\u4|circuit_gen:3:hex_digit|Ndout[1]~4_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:hex_digit|Ndout[1]~4_combout\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X71_Y39_N26
\u4|circuit_gen:3:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:3:out_reg|U3|Q~q\ & (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & (\u4|circuit_gen:3:out_reg|U0|Q~q\ & \u4|circuit_gen:3:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:3:out_reg|U2|Q~q\ & ((\u4|circuit_gen:3:out_reg|U0|Q~q\) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X71_Y39_N20
\u4|circuit_gen:3:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:3:out_reg|U2|Q~q\ & ((\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X72_Y39_N20
\u4|circuit_gen:3:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & (\u4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\)) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:3:hex_digit|Ndout[2]~7_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[2]~7_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X71_Y39_N22
\u4|circuit_gen:3:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:3:out_reg|U0|Q~q\ & ((\u4|circuit_gen:3:out_reg|U1|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ & !\u4|circuit_gen:3:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & 
-- (!\u4|circuit_gen:3:out_reg|U3|Q~q\ & \u4|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (((!\u4|circuit_gen:3:out_reg|U2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X71_Y39_N24
\u4|circuit_gen:3:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((\u4|circuit_gen:3:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U3|Q~q\ & (\u4|circuit_gen:3:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X71_Y39_N2
\u4|circuit_gen:3:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & (\u4|circuit_gen:3:hex_digit|Ndout[3]~9_combout\)) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:3:hex_digit|Ndout[3]~10_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:hex_digit|Ndout[3]~9_combout\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[3]~10_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X71_Y39_N4
\u4|circuit_gen:3:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((\u4|circuit_gen:3:out_reg|U2|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U2|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\)))) # 
-- (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ & (!\u4|circuit_gen:3:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X71_Y39_N30
\u4|circuit_gen:3:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:3:out_reg|U2|Q~q\ & (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:3:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U2|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:3:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X72_Y39_N22
\u4|circuit_gen:3:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & (\u4|circuit_gen:3:hex_digit|Ndout[4]~12_combout\)) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:3:hex_digit|Ndout[4]~13_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:hex_digit|Ndout[4]~12_combout\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[4]~13_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X71_Y39_N18
\u4|circuit_gen:3:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & ((\u4|circuit_gen:3:out_reg|U0|Q~q\ & ((\u4|circuit_gen:3:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X71_Y39_N8
\u4|circuit_gen:3:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:3:out_reg|U1|Q~q\ & (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U3|Q~q\ $ (!\u4|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\ & 
-- (\u4|circuit_gen:3:out_reg|U3|Q~q\ & ((\u4|circuit_gen:3:out_reg|U2|Q~q\) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X72_Y39_N16
\u4|circuit_gen:3:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:3:out_reg|U4|Q~q\ & ((\u4|circuit_gen:3:hex_digit|Ndout[5]~15_combout\))) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & (!\u4|circuit_gen:3:hex_digit|Ndout[5]~16_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|circuit_gen:3:hex_digit|Ndout[5]~16_combout\,
	datac => \u4|clear_reg|Q~q\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[5]~15_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X71_Y39_N6
\u4|circuit_gen:3:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[6]~19_combout\ = (!\u4|circuit_gen:3:out_reg|U4|Q~q\ & (\u4|circuit_gen:3:out_reg|U0|Q~q\ & (\u4|circuit_gen:3:out_reg|U1|Q~q\ & \u4|circuit_gen:3:out_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X71_Y39_N28
\u4|circuit_gen:3:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:3:out_reg|U0|Q~q\ & ((\u4|circuit_gen:3:out_reg|U2|Q~q\ $ (\u4|circuit_gen:3:out_reg|U3|Q~q\)) # (!\u4|circuit_gen:3:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:3:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:3:out_reg|U1|Q~q\ $ (\u4|circuit_gen:3:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:3:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:3:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:3:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X71_Y39_N10
\u4|circuit_gen:3:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:3:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:3:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:3:hex_digit|Ndout[6]~18_combout\) # (!\u4|circuit_gen:3:out_reg|U4|Q~q\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:3:hex_digit|Ndout[6]~19_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:3:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:3:hex_digit|Ndout[6]~18_combout\,
	combout => \u4|circuit_gen:3:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X67_Y40_N30
\u4|circuit_gen:4:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:4:in_reg|U1|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N20
\u4|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[4]~4_combout\ = (\u3|u0|u1|D\(2) & (!\u3|u0|u1|D\(0) & !\u3|u0|u1|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(0),
	datac => \u3|u0|u1|D\(1),
	combout => \u4|decoder|dout[4]~4_combout\);

-- Location: FF_X67_Y40_N31
\u4|circuit_gen:4:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:in_reg|U1|Q~q\);

-- Location: FF_X67_Y39_N7
\u4|circuit_gen:4:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:4:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:out_reg|U1|Q~q\);

-- Location: LCCOMB_X67_Y40_N18
\u4|circuit_gen:4:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:4:in_reg|U3|Q~0_combout\);

-- Location: FF_X67_Y40_N19
\u4|circuit_gen:4:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:in_reg|U3|Q~q\);

-- Location: FF_X67_Y39_N19
\u4|circuit_gen:4:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:4:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:out_reg|U3|Q~q\);

-- Location: LCCOMB_X67_Y40_N28
\u4|circuit_gen:4:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:4:in_reg|U2|Q~0_combout\);

-- Location: FF_X67_Y40_N29
\u4|circuit_gen:4:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:in_reg|U2|Q~q\);

-- Location: FF_X67_Y39_N21
\u4|circuit_gen:4:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:4:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:out_reg|U2|Q~q\);

-- Location: LCCOMB_X67_Y40_N16
\u4|circuit_gen:4:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:4:in_reg|U0|Q~0_combout\);

-- Location: FF_X67_Y40_N17
\u4|circuit_gen:4:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:in_reg|U0|Q~q\);

-- Location: FF_X67_Y39_N25
\u4|circuit_gen:4:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:4:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:out_reg|U0|Q~q\);

-- Location: LCCOMB_X67_Y39_N0
\u4|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:4:out_reg|U3|Q~q\ & (\u4|circuit_gen:4:out_reg|U1|Q~q\ & (\u4|circuit_gen:4:out_reg|U2|Q~q\ $ (\u4|circuit_gen:4:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (\u4|circuit_gen:4:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X67_Y39_N2
\u4|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:4:out_reg|U2|Q~q\ & (\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:4:out_reg|U3|Q~q\ & \u4|circuit_gen:4:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X67_Y40_N8
\u4|circuit_gen:4:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:4:in_reg|U4|Q~0_combout\);

-- Location: FF_X67_Y40_N9
\u4|circuit_gen:4:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:in_reg|U4|Q~q\);

-- Location: LCCOMB_X69_Y39_N0
\u4|circuit_gen:4:out_reg|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:out_reg|U4|Q~feeder_combout\ = \u4|circuit_gen:4:in_reg|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|circuit_gen:4:in_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:out_reg|U4|Q~feeder_combout\);

-- Location: FF_X69_Y39_N1
\u4|circuit_gen:4:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:4:out_reg|U4|Q~feeder_combout\,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:4:out_reg|U4|Q~q\);

-- Location: LCCOMB_X69_Y39_N2
\u4|circuit_gen:4:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & (\u4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\)) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	datad => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X67_Y39_N14
\u4|circuit_gen:4:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:4:out_reg|U0|Q~q\ & (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:4:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X67_Y39_N28
\u4|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:4:out_reg|U1|Q~q\ & (!\u4|circuit_gen:4:out_reg|U2|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\ $ (\u4|circuit_gen:4:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & 
-- ((\u4|circuit_gen:4:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (!\u4|circuit_gen:4:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X69_Y39_N20
\u4|circuit_gen:4:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((\u4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\))) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (!\u4|circuit_gen:4:hex_digit|Ndout[1]~4_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:hex_digit|Ndout[1]~4_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	datad => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X67_Y39_N26
\u4|circuit_gen:4:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:4:out_reg|U2|Q~q\ & ((\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X67_Y39_N16
\u4|circuit_gen:4:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:4:out_reg|U3|Q~q\ & (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & (\u4|circuit_gen:4:out_reg|U2|Q~q\ & \u4|circuit_gen:4:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U3|Q~q\ & 
-- (!\u4|circuit_gen:4:out_reg|U2|Q~q\ & ((\u4|circuit_gen:4:out_reg|U0|Q~q\) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X67_Y39_N4
\u4|circuit_gen:4:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((\u4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\))) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (!\u4|circuit_gen:4:hex_digit|Ndout[2]~7_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[2]~7_combout\,
	datad => \u4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X67_Y39_N8
\u4|circuit_gen:4:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((\u4|circuit_gen:4:out_reg|U3|Q~q\ & (!\u4|circuit_gen:4:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:4:out_reg|U3|Q~q\ & ((\u4|circuit_gen:4:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X67_Y39_N22
\u4|circuit_gen:4:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:4:out_reg|U0|Q~q\ & ((\u4|circuit_gen:4:out_reg|U1|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\ & !\u4|circuit_gen:4:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & 
-- (!\u4|circuit_gen:4:out_reg|U3|Q~q\ & \u4|circuit_gen:4:out_reg|U2|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (((!\u4|circuit_gen:4:out_reg|U2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X69_Y39_N30
\u4|circuit_gen:4:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((\u4|circuit_gen:4:hex_digit|Ndout[3]~9_combout\))) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (!\u4|circuit_gen:4:hex_digit|Ndout[3]~10_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:hex_digit|Ndout[3]~10_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[3]~9_combout\,
	datad => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X67_Y39_N12
\u4|circuit_gen:4:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:4:out_reg|U2|Q~q\ & (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U0|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U2|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:4:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X67_Y39_N10
\u4|circuit_gen:4:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((\u4|circuit_gen:4:out_reg|U2|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U2|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\)))) # 
-- (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\ & ((!\u4|circuit_gen:4:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X69_Y39_N16
\u4|circuit_gen:4:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((\u4|circuit_gen:4:hex_digit|Ndout[4]~12_combout\))) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (!\u4|circuit_gen:4:hex_digit|Ndout[4]~13_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:hex_digit|Ndout[4]~13_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[4]~12_combout\,
	datad => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X67_Y39_N18
\u4|circuit_gen:4:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & ((\u4|circuit_gen:4:out_reg|U0|Q~q\ & ((\u4|circuit_gen:4:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (\u4|circuit_gen:4:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X67_Y39_N24
\u4|circuit_gen:4:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:4:out_reg|U1|Q~q\ & (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & (\u4|circuit_gen:4:out_reg|U2|Q~q\ $ (!\u4|circuit_gen:4:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\ & 
-- (\u4|circuit_gen:4:out_reg|U3|Q~q\ & ((\u4|circuit_gen:4:out_reg|U2|Q~q\) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X67_Y39_N30
\u4|circuit_gen:4:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:4:out_reg|U4|Q~q\ & ((\u4|circuit_gen:4:hex_digit|Ndout[5]~15_combout\))) # (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (!\u4|circuit_gen:4:hex_digit|Ndout[5]~16_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:4:hex_digit|Ndout[5]~16_combout\,
	datac => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:4:hex_digit|Ndout[5]~15_combout\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X67_Y39_N6
\u4|circuit_gen:4:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[6]~19_combout\ = (\u4|circuit_gen:4:out_reg|U2|Q~q\ & (!\u4|circuit_gen:4:out_reg|U4|Q~q\ & (\u4|circuit_gen:4:out_reg|U1|Q~q\ & \u4|circuit_gen:4:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X67_Y39_N20
\u4|circuit_gen:4:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:4:out_reg|U0|Q~q\ & ((\u4|circuit_gen:4:out_reg|U2|Q~q\ $ (\u4|circuit_gen:4:out_reg|U3|Q~q\)) # (!\u4|circuit_gen:4:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:4:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:4:out_reg|U1|Q~q\ $ (\u4|circuit_gen:4:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:4:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:4:out_reg|U0|Q~q\,
	datac => \u4|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:4:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X69_Y39_N10
\u4|circuit_gen:4:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:4:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:4:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:4:out_reg|U4|Q~q\) # (!\u4|circuit_gen:4:hex_digit|Ndout[6]~18_combout\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:4:hex_digit|Ndout[6]~19_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:4:hex_digit|Ndout[6]~18_combout\,
	datad => \u4|circuit_gen:4:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:4:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X67_Y40_N26
\u4|circuit_gen:5:in_reg|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:in_reg|U4|Q~0_combout\ = !\u3|u0|u1|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(7),
	combout => \u4|circuit_gen:5:in_reg|U4|Q~0_combout\);

-- Location: LCCOMB_X66_Y43_N0
\u4|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|decoder|dout[5]~5_combout\ = (\u3|u0|u1|D\(2) & (!\u3|u0|u1|D\(1) & \u3|u0|u1|D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u0|u1|D\(2),
	datab => \u3|u0|u1|D\(1),
	datac => \u3|u0|u1|D\(0),
	combout => \u4|decoder|dout[5]~5_combout\);

-- Location: FF_X67_Y40_N27
\u4|circuit_gen:5:in_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:in_reg|U4|Q~0_combout\,
	ena => \u4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:in_reg|U4|Q~q\);

-- Location: LCCOMB_X67_Y38_N16
\u4|circuit_gen:5:out_reg|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:out_reg|U4|Q~feeder_combout\ = \u4|circuit_gen:5:in_reg|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|circuit_gen:5:in_reg|U4|Q~q\,
	combout => \u4|circuit_gen:5:out_reg|U4|Q~feeder_combout\);

-- Location: FF_X67_Y38_N17
\u4|circuit_gen:5:out_reg|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:out_reg|U4|Q~feeder_combout\,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:out_reg|U4|Q~q\);

-- Location: LCCOMB_X67_Y40_N24
\u4|circuit_gen:5:in_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:in_reg|U1|Q~0_combout\ = !\u3|u0|u1|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(4),
	combout => \u4|circuit_gen:5:in_reg|U1|Q~0_combout\);

-- Location: FF_X67_Y40_N25
\u4|circuit_gen:5:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:in_reg|U1|Q~0_combout\,
	ena => \u4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:in_reg|U1|Q~q\);

-- Location: FF_X71_Y38_N7
\u4|circuit_gen:5:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:5:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:out_reg|U1|Q~q\);

-- Location: LCCOMB_X67_Y40_N6
\u4|circuit_gen:5:in_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:in_reg|U2|Q~0_combout\ = !\u3|u0|u1|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(5),
	combout => \u4|circuit_gen:5:in_reg|U2|Q~0_combout\);

-- Location: FF_X67_Y40_N7
\u4|circuit_gen:5:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:in_reg|U2|Q~0_combout\,
	ena => \u4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:in_reg|U2|Q~q\);

-- Location: FF_X71_Y38_N29
\u4|circuit_gen:5:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:5:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:out_reg|U2|Q~q\);

-- Location: LCCOMB_X67_Y40_N10
\u4|circuit_gen:5:in_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:in_reg|U0|Q~0_combout\ = !\u3|u0|u1|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|u0|u1|D\(3),
	combout => \u4|circuit_gen:5:in_reg|U0|Q~0_combout\);

-- Location: FF_X67_Y40_N11
\u4|circuit_gen:5:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:in_reg|U0|Q~0_combout\,
	ena => \u4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:in_reg|U0|Q~q\);

-- Location: FF_X71_Y38_N9
\u4|circuit_gen:5:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:5:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:out_reg|U0|Q~q\);

-- Location: LCCOMB_X67_Y40_N12
\u4|circuit_gen:5:in_reg|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:in_reg|U3|Q~0_combout\ = !\u3|u0|u1|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|u1|D\(6),
	combout => \u4|circuit_gen:5:in_reg|U3|Q~0_combout\);

-- Location: FF_X67_Y40_N13
\u4|circuit_gen:5:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	d => \u4|circuit_gen:5:in_reg|U3|Q~0_combout\,
	ena => \u4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:in_reg|U3|Q~q\);

-- Location: FF_X71_Y38_N3
\u4|circuit_gen:5:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|u1|state.enable~0clkctrl_outclk\,
	asdata => \u4|circuit_gen:5:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \u4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|circuit_gen:5:out_reg|U3|Q~q\);

-- Location: LCCOMB_X71_Y38_N16
\u4|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\u4|circuit_gen:5:out_reg|U2|Q~q\ & (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:5:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & 
-- (\u4|circuit_gen:5:out_reg|U1|Q~q\ & (\u4|circuit_gen:5:out_reg|U0|Q~q\ $ (!\u4|circuit_gen:5:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y38_N18
\u4|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\u4|circuit_gen:5:out_reg|U2|Q~q\ & (\u4|circuit_gen:5:out_reg|U1|Q~q\ $ (((\u4|circuit_gen:5:out_reg|U0|Q~q\ & \u4|circuit_gen:5:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y38_N16
\u4|circuit_gen:5:hex_digit|Ndout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[0]~2_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & (\u4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\)) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((!\u4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\)))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[0]~2_combout\);

-- Location: LCCOMB_X71_Y38_N30
\u4|circuit_gen:5:hex_digit|Ndout[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[1]~4_combout\ = (\u4|circuit_gen:5:out_reg|U0|Q~q\ & (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U2|Q~q\))) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:5:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:5:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[1]~4_combout\);

-- Location: LCCOMB_X71_Y38_N20
\u4|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & (\u4|circuit_gen:5:out_reg|U0|Q~q\ $ (\u4|circuit_gen:5:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & 
-- ((\u4|circuit_gen:5:out_reg|U0|Q~q\ & (!\u4|circuit_gen:5:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & ((!\u4|circuit_gen:5:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y38_N10
\u4|circuit_gen:5:hex_digit|Ndout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[1]~5_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((\u4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\))) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & (!\u4|circuit_gen:5:hex_digit|Ndout[1]~4_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:5:hex_digit|Ndout[1]~4_combout\,
	datac => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[1]~5_combout\);

-- Location: LCCOMB_X71_Y38_N10
\u4|circuit_gen:5:hex_digit|Ndout[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[2]~7_combout\ = (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & ((\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U0|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & ((\u4|circuit_gen:5:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[2]~7_combout\);

-- Location: LCCOMB_X71_Y38_N24
\u4|circuit_gen:5:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\ = (\u4|circuit_gen:5:out_reg|U2|Q~q\ & (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & (\u4|circuit_gen:5:out_reg|U0|Q~q\ & \u4|circuit_gen:5:out_reg|U3|Q~q\))) # (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & 
-- (!\u4|circuit_gen:5:out_reg|U3|Q~q\ & ((\u4|circuit_gen:5:out_reg|U0|Q~q\) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X72_Y38_N20
\u4|circuit_gen:5:hex_digit|Ndout[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[2]~8_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((\u4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\))) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & (!\u4|circuit_gen:5:hex_digit|Ndout[2]~7_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:hex_digit|Ndout[2]~7_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[2]~8_combout\);

-- Location: LCCOMB_X71_Y38_N14
\u4|circuit_gen:5:hex_digit|Ndout[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[3]~10_combout\ = (\u4|circuit_gen:5:out_reg|U1|Q~q\ & ((\u4|circuit_gen:5:out_reg|U3|Q~q\ & (!\u4|circuit_gen:5:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U3|Q~q\ & ((\u4|circuit_gen:5:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[3]~10_combout\);

-- Location: LCCOMB_X71_Y38_N12
\u4|circuit_gen:5:hex_digit|Ndout[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[3]~9_combout\ = (\u4|circuit_gen:5:out_reg|U0|Q~q\ & ((\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & \u4|circuit_gen:5:out_reg|U3|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & 
-- (\u4|circuit_gen:5:out_reg|U2|Q~q\ & !\u4|circuit_gen:5:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U1|Q~q\ $ ((!\u4|circuit_gen:5:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[3]~9_combout\);

-- Location: LCCOMB_X71_Y38_N0
\u4|circuit_gen:5:hex_digit|Ndout[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[3]~11_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((\u4|circuit_gen:5:hex_digit|Ndout[3]~9_combout\))) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & (!\u4|circuit_gen:5:hex_digit|Ndout[3]~10_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datac => \u4|circuit_gen:5:hex_digit|Ndout[3]~10_combout\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[3]~9_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[3]~11_combout\);

-- Location: LCCOMB_X71_Y38_N4
\u4|circuit_gen:5:hex_digit|Ndout[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[4]~13_combout\ = (\u4|circuit_gen:5:out_reg|U2|Q~q\ & (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U0|Q~q\))) # (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & (\u4|circuit_gen:5:out_reg|U3|Q~q\ & 
-- (\u4|circuit_gen:5:out_reg|U1|Q~q\ $ (!\u4|circuit_gen:5:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[4]~13_combout\);

-- Location: LCCOMB_X71_Y38_N26
\u4|circuit_gen:5:hex_digit|Ndout[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[4]~12_combout\ = (\u4|circuit_gen:5:out_reg|U1|Q~q\ & ((\u4|circuit_gen:5:out_reg|U2|Q~q\ & (!\u4|circuit_gen:5:out_reg|U0|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U2|Q~q\ & ((\u4|circuit_gen:5:out_reg|U3|Q~q\))))) # 
-- (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & (((!\u4|circuit_gen:5:out_reg|U0|Q~q\ & \u4|circuit_gen:5:out_reg|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[4]~12_combout\);

-- Location: LCCOMB_X71_Y38_N22
\u4|circuit_gen:5:hex_digit|Ndout[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[4]~14_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((\u4|circuit_gen:5:hex_digit|Ndout[4]~12_combout\))) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & (!\u4|circuit_gen:5:hex_digit|Ndout[4]~13_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|clear_reg|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datac => \u4|circuit_gen:5:hex_digit|Ndout[4]~13_combout\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[4]~12_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[4]~14_combout\);

-- Location: LCCOMB_X71_Y38_N2
\u4|circuit_gen:5:hex_digit|Ndout[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[5]~16_combout\ = (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & ((\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & ((\u4|circuit_gen:5:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[5]~16_combout\);

-- Location: LCCOMB_X71_Y38_N8
\u4|circuit_gen:5:hex_digit|Ndout[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[5]~15_combout\ = (\u4|circuit_gen:5:out_reg|U1|Q~q\ & (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U2|Q~q\ $ (!\u4|circuit_gen:5:out_reg|U3|Q~q\)))) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\ & 
-- (\u4|circuit_gen:5:out_reg|U3|Q~q\ & ((\u4|circuit_gen:5:out_reg|U2|Q~q\) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[5]~15_combout\);

-- Location: LCCOMB_X72_Y38_N22
\u4|circuit_gen:5:hex_digit|Ndout[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[5]~17_combout\ = ((\u4|circuit_gen:5:out_reg|U4|Q~q\ & ((\u4|circuit_gen:5:hex_digit|Ndout[5]~15_combout\))) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\ & (!\u4|circuit_gen:5:hex_digit|Ndout[5]~16_combout\))) # 
-- (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:hex_digit|Ndout[5]~16_combout\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[5]~15_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[5]~17_combout\);

-- Location: LCCOMB_X71_Y38_N6
\u4|circuit_gen:5:hex_digit|Ndout[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[6]~19_combout\ = (\u4|circuit_gen:5:out_reg|U0|Q~q\ & (\u4|circuit_gen:5:out_reg|U2|Q~q\ & (\u4|circuit_gen:5:out_reg|U1|Q~q\ & !\u4|circuit_gen:5:out_reg|U4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[6]~19_combout\);

-- Location: LCCOMB_X71_Y38_N28
\u4|circuit_gen:5:hex_digit|Ndout[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[6]~18_combout\ = (\u4|circuit_gen:5:out_reg|U0|Q~q\ & ((\u4|circuit_gen:5:out_reg|U3|Q~q\ $ (\u4|circuit_gen:5:out_reg|U2|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U1|Q~q\))) # (!\u4|circuit_gen:5:out_reg|U0|Q~q\ & 
-- ((\u4|circuit_gen:5:out_reg|U2|Q~q\ $ (\u4|circuit_gen:5:out_reg|U1|Q~q\)) # (!\u4|circuit_gen:5:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U0|Q~q\,
	datab => \u4|circuit_gen:5:out_reg|U3|Q~q\,
	datac => \u4|circuit_gen:5:out_reg|U2|Q~q\,
	datad => \u4|circuit_gen:5:out_reg|U1|Q~q\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[6]~18_combout\);

-- Location: LCCOMB_X72_Y38_N8
\u4|circuit_gen:5:hex_digit|Ndout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|circuit_gen:5:hex_digit|Ndout[6]~20_combout\ = ((!\u4|circuit_gen:5:hex_digit|Ndout[6]~19_combout\ & ((!\u4|circuit_gen:5:hex_digit|Ndout[6]~18_combout\) # (!\u4|circuit_gen:5:out_reg|U4|Q~q\)))) # (!\u4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|circuit_gen:5:out_reg|U4|Q~q\,
	datab => \u4|clear_reg|Q~q\,
	datac => \u4|circuit_gen:5:hex_digit|Ndout[6]~19_combout\,
	datad => \u4|circuit_gen:5:hex_digit|Ndout[6]~18_combout\,
	combout => \u4|circuit_gen:5:hex_digit|Ndout[6]~20_combout\);

-- Location: LCCOMB_X45_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X45_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X46_Y34_N0
\u1|u1|u1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|Equal0~1_combout\ = (\u1|u1|u1|Equal0~0_combout\ & \u1|u1|u1|u2|u1|Reg5_Out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|Equal0~0_combout\,
	datad => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	combout => \u1|u1|u1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y34_N2
\u1|u1|u1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|u1|u1|Equal1~0_combout\ = (\u1|u1|u1|Equal0~0_combout\ & !\u1|u1|u1|u2|u1|Reg5_Out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|Equal0~0_combout\,
	datad => \u1|u1|u1|u2|u1|Reg5_Out\(4),
	combout => \u1|u1|u1|Equal1~0_combout\);

-- Location: FF_X45_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X45_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X21_Y6_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X46_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X50_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


