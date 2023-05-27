module pwm
    #(
        parameter T_CYCLE=2000,
        parameter T_ON=1000
    )
    (input logic clk, output logic pwm_out);

    logic[$clog2(T_CYCLE)-1:0] count;

    always_ff @(posedge clk) begin
        if (count < T_CYCLE)
            count <= count + 1;
        else 
            count <= 0;
    end

    assign pwm_out = (count < T_ON);
endmodule
