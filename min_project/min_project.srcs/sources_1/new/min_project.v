module min_project(
    clk, reset, hotwater, coldwater, dr_cl, start, filled, detergent_added, 
    wash_time_out, drained, dry_time_out, soap_wash_check, door_lock, motor_on, 
    hot_fill_value_on, cold_fill_value_on, drain_value_on, completed, soap_wash, 
    cold_water_wash, hot_water_wash
);
    input clk, reset, hotwater, coldwater, dr_cl, start, filled, detergent_added, 
          wash_time_out, drained, dry_time_out, soap_wash_check;
    output reg door_lock, motor_on, hot_fill_value_on, cold_fill_value_on,
               drain_value_on, completed, soap_wash, cold_water_wash, hot_water_wash;

    // Defining the states
    parameter enquire_door = 3'b000;
    parameter hot_water = 3'b001;
    parameter cold_water = 3'b010;
    parameter add_deter = 3'b011;
    parameter wash = 3'b100;
    parameter drain_water = 3'b101;
    parameter dry = 3'b110;
    
    reg [2:0] present_state, coming_state;

    // State register
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            present_state <= enquire_door;
        else
            present_state <= coming_state;
    end

    // State machine logic
    always @(*)
    begin
        // Default output values
        motor_on = 1'b0;
        hot_fill_value_on = 1'b0;
        cold_fill_value_on = 1'b0;
        drain_value_on = 1'b0;
        door_lock = 1'b0;
        soap_wash = 1'b0;
        cold_water_wash = 1'b0;
        hot_water_wash = 1'b0;
        completed = 1'b0;

        case(present_state)
            enquire_door: begin
                if (start == 1'b1 && dr_cl == 1'b1 && hotwater == 1'b1) begin
                    coming_state = hot_water;
                    door_lock = 1'b1;
                end else if (start == 1'b1 && dr_cl == 1'b1 && coldwater == 1'b1) begin
                    coming_state = cold_water;
                    door_lock = 1'b1;
                end else begin
                    coming_state = enquire_door;
                end
            end
            
            hot_water: begin
                if (filled == 1'b1) begin
                    if (soap_wash_check == 1'b0) begin
                        coming_state = add_deter;
                        soap_wash = 1'b1;
                    end else begin
                        coming_state = wash;
                        hot_water_wash = 1'b1;
                    end
                end else begin
                    coming_state = hot_water;
                    hot_fill_value_on = 1'b1;
                    door_lock = 1'b1;
                end
            end

            cold_water: begin
                if (filled == 1'b1) begin
                    if (soap_wash_check == 1'b0) begin
                        coming_state = add_deter;
                        soap_wash = 1'b1;
                    end else begin
                        coming_state = wash;
                        cold_water_wash = 1'b1;
                    end
                end else begin
                    coming_state = cold_water;
                    cold_fill_value_on = 1'b1;
                    door_lock = 1'b1;
                end
            end

            add_deter: begin
                if (detergent_added == 1'b1) begin
                    coming_state = wash;
                    soap_wash = 1'b1;
                end else begin
                    coming_state = add_deter;
                    soap_wash = 1'b1;
                end
            end

            wash: begin
                if (wash_time_out == 1'b1) begin
                    coming_state = drain_water;
                end else begin
                    coming_state = wash;
                    motor_on = 1'b1;
                end
            end

            drain_water: begin
                if (drained == 1'b1) begin
                    coming_state = dry;
                end else begin
                    coming_state = drain_water;
                    drain_value_on = 1'b1;
                end
            end

            dry: begin
                if (dry_time_out == 1'b1) begin
                    coming_state = enquire_door;
                    completed = 1'b1;
                end else begin
                    coming_state = dry;
                end
            end

            default: coming_state = enquire_door;
        endcase
    end
endmodule
