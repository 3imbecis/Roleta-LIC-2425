-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Tue Mar 01 09:42:31 2022"

library ieee;
use ieee.std_logic_1164.all; 

library work;

entity UsbPort is 
	port(
		inputPort: in std_logic_vector(7 downto 0);
		outputPort: out std_logic_vector(7 downto 0)
	);
end UsbPort;

architecture bdf_type of UsbPort is 

    component sld_virtual_jtag
        GENERIC(
            lpm_type: string;
			sld_auto_instance_index: string;
			sld_instance_index: integer;
			sld_ir_width: integer;
			sld_sim_action: string;
			sld_sim_n_scan: integer;
			sld_sim_total_length: integer
		);
	    PORT(
            tdo: in std_logic;
		    ir_out: in std_logic_vector(7 downto 0);
		    tck: out std_logic;
		    tdi: out std_logic;
		    virtual_state_cdr: out std_logic;
		    virtual_state_sdr: out std_logic;
		    virtual_state_e1dr: out std_logic;
		    virtual_state_pdr: out std_logic;
		    virtual_state_e2dr: out std_logic;
		    virtual_state_udr: out std_logic;
		    virtual_state_cir: out std_logic;
		    virtual_state_uir: out std_logic;
		    tms: out std_logic;
		    jtag_state_tlr: out std_logic;
		    jtag_state_rti: out std_logic;
		    jtag_state_sdrs: out std_logic;
		    jtag_state_cdr: out std_logic;
		    jtag_state_sdr: out std_logic;
		    jtag_state_e1dr: out std_logic;
		    jtag_state_pdr: out std_logic;
		    jtag_state_e2dr: out std_logic;
		    jtag_state_udr: out std_logic;
		    jtag_state_sirs: out std_logic;
		    jtag_state_cir: out std_logic;
		    jtag_state_sir: out std_logic;
		    jtag_state_e1ir: out std_logic;
		    jtag_state_pir: out std_logic;
		    jtag_state_e2ir: out std_logic;
		    jtag_state_uir: out std_logic;
		    ir_in: out std_logic_vector(7 downto 0)
	    );
    end component;

begin

    b2v_inst: sld_virtual_jtag
        generic map (
            lpm_type => "sld_virtual_jtag",
            sld_auto_instance_index => "YES",
            sld_instance_index => 0,
            sld_ir_width => 8,
            sld_sim_action => "UNUSED",
            sld_sim_n_scan => 0,
            sld_sim_total_length => 0
        )
        port map (
            ir_out => inputPort,
            ir_in => outputPort
        );

end bdf_type;