// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 19 17:41:44 2024
// Host        : DESKTOP-CM1PGBH running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/project/min_project/min_project.sim/sim_1/synth/func/xsim/min_project_func_synth.v
// Design      : min_project
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* add_deter = "3'b011" *) (* cold_water = "3'b010" *) (* drain_water = "3'b101" *) 
(* dry = "3'b110" *) (* enquire_door = "3'b000" *) (* hot_water = "3'b001" *) 
(* wash = "3'b100" *) 
(* NotValidForBitStream *)
module min_project
   (clk,
    reset,
    hotwater,
    coldwater,
    dr_cl,
    start,
    filled,
    detergent_added,
    wash_time_out,
    drained,
    dry_time_out,
    soap_wash_check,
    door_lock,
    motor_on,
    hot_fill_value_on,
    cold_fill_value_on,
    drain_value_on,
    completed,
    soap_wash,
    cold_water_wash,
    hot_water_wash);
  input clk;
  input reset;
  input hotwater;
  input coldwater;
  input dr_cl;
  input start;
  input filled;
  input detergent_added;
  input wash_time_out;
  input drained;
  input dry_time_out;
  input soap_wash_check;
  output door_lock;
  output motor_on;
  output hot_fill_value_on;
  output cold_fill_value_on;
  output drain_value_on;
  output completed;
  output soap_wash;
  output cold_water_wash;
  output hot_water_wash;

  wire \FSM_onehot_present_state[0]_i_1_n_0 ;
  wire \FSM_onehot_present_state[1]_i_1_n_0 ;
  wire \FSM_onehot_present_state[2]_i_1_n_0 ;
  wire \FSM_onehot_present_state[3]_i_1_n_0 ;
  wire \FSM_onehot_present_state[4]_i_1_n_0 ;
  wire \FSM_onehot_present_state[4]_i_2_n_0 ;
  wire \FSM_onehot_present_state[5]_i_1_n_0 ;
  wire \FSM_onehot_present_state[6]_i_1_n_0 ;
  wire \FSM_onehot_present_state_reg_n_0_[0] ;
  wire \FSM_onehot_present_state_reg_n_0_[1] ;
  wire \FSM_onehot_present_state_reg_n_0_[2] ;
  wire \FSM_onehot_present_state_reg_n_0_[3] ;
  wire \FSM_onehot_present_state_reg_n_0_[4] ;
  wire \FSM_onehot_present_state_reg_n_0_[5] ;
  wire \FSM_onehot_present_state_reg_n_0_[6] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cold_fill_value_on;
  wire cold_fill_value_on_OBUF;
  wire cold_water_wash;
  wire cold_water_wash_OBUF;
  wire coldwater;
  wire coldwater_IBUF;
  wire completed;
  wire completed_OBUF;
  wire detergent_added;
  wire detergent_added_IBUF;
  wire door_lock;
  wire door_lock_OBUF;
  wire door_lock_OBUF_inst_i_2_n_0;
  wire dr_cl;
  wire dr_cl_IBUF;
  wire drain_value_on;
  wire drain_value_on_OBUF;
  wire drained;
  wire drained_IBUF;
  wire dry_time_out;
  wire dry_time_out_IBUF;
  wire filled;
  wire filled_IBUF;
  wire hot_fill_value_on;
  wire hot_fill_value_on_OBUF;
  wire hot_water_wash;
  wire hot_water_wash_OBUF;
  wire hotwater;
  wire hotwater_IBUF;
  wire motor_on;
  wire motor_on_OBUF;
  wire reset;
  wire reset_IBUF;
  wire soap_wash;
  wire soap_wash_OBUF;
  wire soap_wash_check;
  wire soap_wash_check_IBUF;
  wire start;
  wire start_IBUF;
  wire wash_time_out;
  wire wash_time_out_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_present_state[0]_i_1 
       (.I0(door_lock_OBUF_inst_i_2_n_0),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(dry_time_out_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[6] ),
        .O(\FSM_onehot_present_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \FSM_onehot_present_state[1]_i_1 
       (.I0(dr_cl_IBUF),
        .I1(start_IBUF),
        .I2(hotwater_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I4(filled_IBUF),
        .I5(\FSM_onehot_present_state_reg_n_0_[1] ),
        .O(\FSM_onehot_present_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \FSM_onehot_present_state[2]_i_1 
       (.I0(coldwater_IBUF),
        .I1(hotwater_IBUF),
        .I2(start_IBUF),
        .I3(dr_cl_IBUF),
        .I4(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I5(cold_fill_value_on_OBUF),
        .O(\FSM_onehot_present_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E00FFFF0E00)) 
    \FSM_onehot_present_state[3]_i_1 
       (.I0(\FSM_onehot_present_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I2(soap_wash_check_IBUF),
        .I3(filled_IBUF),
        .I4(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I5(detergent_added_IBUF),
        .O(\FSM_onehot_present_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \FSM_onehot_present_state[4]_i_1 
       (.I0(\FSM_onehot_present_state_reg_n_0_[4] ),
        .I1(wash_time_out_IBUF),
        .I2(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I3(detergent_added_IBUF),
        .I4(\FSM_onehot_present_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_present_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \FSM_onehot_present_state[4]_i_2 
       (.I0(\FSM_onehot_present_state_reg_n_0_[2] ),
        .I1(filled_IBUF),
        .I2(soap_wash_check_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[1] ),
        .O(\FSM_onehot_present_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_present_state[5]_i_1 
       (.I0(wash_time_out_IBUF),
        .I1(\FSM_onehot_present_state_reg_n_0_[4] ),
        .I2(drained_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[5] ),
        .O(\FSM_onehot_present_state[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_present_state[6]_i_1 
       (.I0(drained_IBUF),
        .I1(\FSM_onehot_present_state_reg_n_0_[5] ),
        .I2(dry_time_out_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[6] ),
        .O(\FSM_onehot_present_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_present_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_present_state[0]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\FSM_onehot_present_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "hot_water:0000010,cold_water:0000100,add_deter:0001000,wash:0010000,drain_water:0100000,dry:1000000,enquire_door:0000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_present_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_present_state_reg_n_0_[6] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF cold_fill_value_on_OBUF_inst
       (.I(cold_fill_value_on_OBUF),
        .O(cold_fill_value_on));
  LUT2 #(
    .INIT(4'h2)) 
    cold_fill_value_on_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[2] ),
        .I1(filled_IBUF),
        .O(cold_fill_value_on_OBUF));
  OBUF cold_water_wash_OBUF_inst
       (.I(cold_water_wash_OBUF),
        .O(cold_water_wash));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cold_water_wash_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[2] ),
        .I1(soap_wash_check_IBUF),
        .I2(filled_IBUF),
        .O(cold_water_wash_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    coldwater_IBUF_inst
       (.I(coldwater),
        .O(coldwater_IBUF));
  OBUF completed_OBUF_inst
       (.I(completed_OBUF),
        .O(completed));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    completed_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[6] ),
        .I1(dry_time_out_IBUF),
        .O(completed_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    detergent_added_IBUF_inst
       (.I(detergent_added),
        .O(detergent_added_IBUF));
  OBUF door_lock_OBUF_inst
       (.I(door_lock_OBUF),
        .O(door_lock));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8F8F8F88)) 
    door_lock_OBUF_inst_i_1
       (.I0(door_lock_OBUF_inst_i_2_n_0),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .I2(filled_IBUF),
        .I3(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_present_state_reg_n_0_[2] ),
        .O(door_lock_OBUF));
  LUT4 #(
    .INIT(16'hE000)) 
    door_lock_OBUF_inst_i_2
       (.I0(coldwater_IBUF),
        .I1(hotwater_IBUF),
        .I2(start_IBUF),
        .I3(dr_cl_IBUF),
        .O(door_lock_OBUF_inst_i_2_n_0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    dr_cl_IBUF_inst
       (.I(dr_cl),
        .O(dr_cl_IBUF));
  OBUF drain_value_on_OBUF_inst
       (.I(drain_value_on_OBUF),
        .O(drain_value_on));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    drain_value_on_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[5] ),
        .I1(drained_IBUF),
        .O(drain_value_on_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    drained_IBUF_inst
       (.I(drained),
        .O(drained_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    dry_time_out_IBUF_inst
       (.I(dry_time_out),
        .O(dry_time_out_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    filled_IBUF_inst
       (.I(filled),
        .O(filled_IBUF));
  OBUF hot_fill_value_on_OBUF_inst
       (.I(hot_fill_value_on_OBUF),
        .O(hot_fill_value_on));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    hot_fill_value_on_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I1(filled_IBUF),
        .O(hot_fill_value_on_OBUF));
  OBUF hot_water_wash_OBUF_inst
       (.I(hot_water_wash_OBUF),
        .O(hot_water_wash));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    hot_water_wash_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I1(soap_wash_check_IBUF),
        .I2(filled_IBUF),
        .O(hot_water_wash_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    hotwater_IBUF_inst
       (.I(hotwater),
        .O(hotwater_IBUF));
  OBUF motor_on_OBUF_inst
       (.I(motor_on_OBUF),
        .O(motor_on));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    motor_on_OBUF_inst_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[4] ),
        .I1(wash_time_out_IBUF),
        .O(motor_on_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF soap_wash_OBUF_inst
       (.I(soap_wash_OBUF),
        .O(soap_wash));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF2F2F2F0)) 
    soap_wash_OBUF_inst_i_1
       (.I0(filled_IBUF),
        .I1(soap_wash_check_IBUF),
        .I2(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_present_state_reg_n_0_[2] ),
        .O(soap_wash_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    soap_wash_check_IBUF_inst
       (.I(soap_wash_check),
        .O(soap_wash_check_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    wash_time_out_IBUF_inst
       (.I(wash_time_out),
        .O(wash_time_out_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
