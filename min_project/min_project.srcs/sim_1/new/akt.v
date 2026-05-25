`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 23:08:46
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for min_project washing machine FSM
// 
//////////////////////////////////////////////////////////////////////////////////

module testbench;
    reg clk, reset, hotwater, coldwater, dr_cl, start, 
        filled, detergent_added, wash_time_out, drained, 
        dry_time_out, soap_wash_check;
    wire door_lock, motor_on, hot_fill_value_on, cold_fill_value_on, 
         drain_value_on, completed, soap_wash, cold_water_wash, hot_water_wash;

    // Instantiate the min_project module (DUT)
    min_project DUT1 (
        .clk(clk), 
        .reset(reset), 
        .hotwater(hotwater), 
        .coldwater(coldwater), 
        .dr_cl(dr_cl), 
        .start(start), 
        .filled(filled), 
        .detergent_added(detergent_added), 
        .wash_time_out(wash_time_out), 
        .drained(drained), 
        .dry_time_out(dry_time_out), 
        .soap_wash_check(soap_wash_check), 
        .door_lock(door_lock), 
        .motor_on(motor_on), 
        .hot_fill_value_on(hot_fill_value_on), 
        .cold_fill_value_on(cold_fill_value_on), 
        .drain_value_on(drain_value_on), 
        .completed(completed), 
        .soap_wash(soap_wash), 
        .cold_water_wash(cold_water_wash), 
        .hot_water_wash(hot_water_wash)
    );

    // Initialize signals
    initial begin
        clk = 1'b0;
        reset = 1'b1;
        dr_cl = 1'b0;
        hotwater = 1'b0;
        coldwater = 1'b0;
        start = 1'b0;
        filled = 1'b0;
        detergent_added = 1'b0;
        wash_time_out = 1'b0;
        drained = 1'b0;
        dry_time_out = 1'b0;
        soap_wash_check = 1'b0;

        // Apply reset and start sequence
        #5 reset = 1'b0;  // Deassert reset
        #5 start = 1'b1;  // Start the process
        dr_cl = 1'b1;     // Door closed

        // Simulate hot water fill and other events with time delays
        #10 hotwater = 1'b1;
        #10 coldwater = 1'b1;  // This seems to conflict with hotwater, so check logic
        #10 filled = 1'b1;
        #10 detergent_added = 1'b1;
        #10 wash_time_out = 1'b1;
        #10 soap_wash_check = 1'b1;
        #10 drained = 1'b1;
        #10 dry_time_out = 1'b1;
    end

    // Clock generation
    always begin
        #5 clk = ~clk;  // Generate a clock with 10ns period
    end
endmodule
