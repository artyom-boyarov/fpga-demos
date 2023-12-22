`timescale 1ns / 1ns

//////////////////////////////////////////////////////////////////////////////////
// Company: Heemogoblin Computer Inc
// Engineer: Artem Evgenyevych Boyarov
// 
// Create Date: 12/21/2023 11:48:54 AM
// Design Name: 
// Module Name: adt7410_i2c_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adt7410_i2c
#( 
    parameter CLK_F=100_000_000,
    parameter CLK_PERIOD=10, // 10 ns clock period
    parameter INTERVAL=1_000_000_000 // 10^9 nanoseconds in 1 second
)
(
    /*
    inout logic scl,
    inout logic sda,
*/

    output logic sda_out,
    output logic sda_en,
    input logic sda_in,

    output logic scl_out,
    output logic scl_en,
    input logic scl_in,

    input logic clk,
    output logic[15:0] temp_out,
    input logic start_trigger,
    output logic finished
);

    localparam TIME_1SEC        = int'(INTERVAL/CLK_PERIOD); // Clock ticks in 1 sec
    localparam TIME_THDSTA      = int'(600/CLK_PERIOD);
    localparam TIME_TSUSTA      = int'(600/CLK_PERIOD);
    localparam TIME_THIGH       = int'(2000/CLK_PERIOD);
    localparam TIME_TLOW        = int'(2000/CLK_PERIOD);
    localparam TIME_TSUDAT      = int'(250/CLK_PERIOD);
    localparam TIME_TSUSTO      = int'(600/CLK_PERIOD);
    localparam TIME_THDDAT      = int'(30/CLK_PERIOD);
    localparam TIME_SCK_PERIOD  = int'(2000/CLK_PERIOD);
    localparam I2C_ADDR = 7'h48; // 0x48
    localparam I2CBITS = 1 + // start
                        7 + // 7 bits for address
                        1 + // 1 bit for read
                        1 + // 1 bit for ack back
                        8 + // 8 bits upper data
                        1 + // 1 bit for ack
                        8 + // 8 bits lower data
                        1 + // 1 bit for ack
                        1 + 1;  // 1 bit for stop




    typedef enum
               {
                IDLE,
                START,
                DEVICE_ADDR_1,
                R_W_LOW_1,
                ACK_1,
                REG_ADDR,
                ACK_2,
                REPEAT_START,
                DEVICE_ADDR_2,
                R_W_HIGH_2,
                ACK_3,
                READ_TEMP_MSB,
                ACK_4_MSTR,
                READ_TEMP_LSB,
                NO_ACK_5_MSTR
               } i2c_state_t;

    (* mark_debug = "true" *) i2c_state_t state;

    (* mark_debug = "true" *) logic[$clog2(TIME_1SEC)-1:0] counter;
    (* mark_debug = "true" *) logic[3:0] device_addr_idx;
    (* mark_debug = "true" *) logic[7:0] device_addr;
    (* mark_debug = "true" *) logic[3:0] reg_addr_idx;
    (* mark_debug = "true" *) logic[7:0] reg_addr;
    (* mark_debug = "true" *) logic[3:0] num_temp_bits_read;
    (* mark_debug = "true" *) logic[15:0] temp_data_in;
    

    initial begin
        state = IDLE;
        counter = 0;
        device_addr = 7'b1001000; // Hex 0x48
        device_addr_idx = 6;
        reg_addr = 7'b0; // Hex 0x00. 
        // Maybe we don't need logic for this, but if we want to then improve 
        // and make this more versatile we will have the logic here.
        reg_addr_idx = 6;
        num_temp_bits_read = 0;
        temp_data_in = 0;
    end

    always @(posedge clk) begin

        case (state) 

            IDLE: begin
                // Prob don't need this since pull up resistor pulls up SDA and SCL?
                sda_en <= 1;
                sda_out <= 1;

                scl_en <= 1;
                scl_out <= 1;
                
                if (start_trigger) state <= START;
            end

            START: begin
                sda_out <= 0;
                sda_en <= 1;
                scl_en <= 1;
                scl_out <= 1;
                finished <= 0;
                if (counter == TIME_THDSTA) begin
                    state <= DEVICE_ADDR_1;
                    counter <= 0;
                    scl_out <= 0;
                end else 
                    counter <= counter + 1;
            end

            DEVICE_ADDR_1: begin
                
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1;
                if (counter > TIME_TSUDAT)
                    sda_out <= device_addr[device_addr_idx];
                
                if (counter == (2 * TIME_SCK_PERIOD) - 1) begin
                    counter <= 0;
                    if (device_addr_idx == 0)
                        state <= R_W_LOW_1;
                    else 
                        device_addr_idx <= device_addr_idx - 1;
                end else 
                    counter <= counter + 1;
            end

            R_W_LOW_1: begin
                
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1;
                if (counter > TIME_TSUDAT)
                    sda_out <= 0; // R/W low
                
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= ACK_1;
                end else 
                    counter <= counter + 1;
            end

            ACK_1: begin
                
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 0; // Release the SDA line, wait for ACK
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= REG_ADDR;
                end else 
                    counter <= counter + 1;
            end

            REG_ADDR: begin

                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1;
                if (counter > TIME_TSUDAT)
                    sda_out <= reg_addr[reg_addr_idx];
                
                if (counter == (2 * TIME_SCK_PERIOD) - 1) begin
                    counter <= 0;
                    if (reg_addr_idx == 0)
                        state <= ACK_2;
                    else 
                        reg_addr_idx <= reg_addr_idx - 1;
                end else 
                    counter <= counter + 1;
            end

            ACK_2: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 0; // Release the SDA line, wait for ACK
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= REPEAT_START;
                    sda_en <= 1;
                end else 
                    counter <= counter + 1;
            end

            REPEAT_START: begin
                // Pull SDA high after 250 ns
                // Pull SDA low after 2600 ns

                sda_en <= 1;
                sda_out <= (counter >= TIME_TSUDAT && counter <= (TIME_SCK_PERIOD + TIME_TSUSTA));
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= DEVICE_ADDR_2;
                    sda_en <= 1;
                    device_addr_idx <= 6;
                end else 
                    counter <= counter + 1;
            end

            DEVICE_ADDR_2: begin

                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1;
                if (counter > TIME_TSUDAT)
                    sda_out <= device_addr[device_addr_idx];
                
                if (counter == (2 * TIME_SCK_PERIOD) - 1) begin
                    counter <= 0;
                    if (device_addr_idx == 0)
                        state <= R_W_HIGH_2;
                    else 
                        device_addr_idx <= device_addr_idx - 1;
                end else 
                    counter <= counter + 1;
            end

            R_W_HIGH_2: begin
                
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1;
                if (counter > TIME_TSUDAT)
                    sda_out <= 1; // R/W high
                
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= ACK_3;
                end else 
                    counter <= counter + 1;
            end

            ACK_3: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 0; // Release the SDA line, wait for ACK
                
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= READ_TEMP_MSB;
                end else 
                    counter <= counter + 1;
            end

            READ_TEMP_MSB: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 0; // Release SDA line
                
                // We need synchronization and proper sampling
                // Wait 1000 ns (1us from falling edge) - at this point the data is valid.
                if (counter == TIME_SCK_PERIOD / 2)
                    temp_data_in = {temp_data_in[14:0], sda_in};

                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= READ_TEMP_MSB;
                    if (num_temp_bits_read == 7) begin
                        state <= ACK_4_MSTR;
                        num_temp_bits_read <= 0;
                        sda_en <= 1;
                    end else 
                        num_temp_bits_read <= num_temp_bits_read + 1;
                end else 
                    counter <= counter + 1;
            end

            ACK_4_MSTR: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1; // Control SDA line
                sda_out <= 0; // ACK
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= READ_TEMP_LSB;
                    num_temp_bits_read <= 0;
                    sda_en <= 0;
                end else 
                    counter <= counter + 1;
            end

            READ_TEMP_LSB: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 0; // Release SDA line
                
                // We need synchronization and proper sampling
                // Wait 1000 ns (1us from falling edge) - at this point the data is valid.
                if (counter == TIME_SCK_PERIOD / 2)
                    temp_data_in = {temp_data_in[14:0], sda_in};

                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= READ_TEMP_LSB;
                    if (num_temp_bits_read == 7) begin
                        state <= NO_ACK_5_MSTR;
                        num_temp_bits_read <= 0;
                    end else 
                        num_temp_bits_read <= num_temp_bits_read + 1;
                end else 
                    counter <= counter + 1;
            end


            NO_ACK_5_MSTR: begin
                scl_en <= 1; // We control SCL line
                scl_out <= (counter >= TIME_SCK_PERIOD);
                
                sda_en <= 1; // Control SDA line
                sda_out <= 1; // NACK
                if (counter == 2 * TIME_SCK_PERIOD) begin
                    counter <= 0;
                    state <= IDLE; // We are finished here.
                    finished <= 1;
                end else 
                    counter <= counter + 1;
            end




            default:
                state <= IDLE;

        endcase

    end
    
    assign temp_out = temp_data_in;

    
endmodule
