
module adt7410_i2c
#( parameter CLK_F=100_000_000)
(
    output logic i2c_scl,
    inout logic i2c_sda,
    input logic clk,
    output logic[15:0] temp_out,
    input logic start,
    output logic finished
);
    logic scl_counter_enable;
    logic [$clog2(CLK_F):0] internal_counter;

    adt7410_i2c_scl_counter impl_scl_counter (
        .clk(clk),
        .enable(scl_counter_enable),
        .scl(i2c_scl)
    );

    typedef enum {IDLE, DEVICE_ADDR_P1, RADDR_P1} i2c_state_t;
    
    i2c_state_t state;
    
    logic sda_en;
    
    always @(posedge clk)
        case (state)
            IDLE:
                // Wait for 1 second before sending next request
                if (internal_counter > CLK_F) begin
                    state <= DEVICE_ADDR_P1;
                    internal_counter <= 0;
                    i2c_sda <= 0;
                end
                else
                    internal_counter <= internal_counter + 1;
            DEVICE_ADDR_P1: begin
                
            end
                
        endcase
    
endmodule
