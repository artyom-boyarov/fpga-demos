module alu(
    input logic[31:0] dataA, 
    dataB, 
    input logic[2:0] operation, 
    input logic sel1, 
    output logic[31:0] result
);
    always_comb
        casez(operation)
            'b000: result = (sel1) ? dataA - dataB : dataA + dataB;
            'b001: result = dataA << dataB;
            'b01?: result = (dataA < dataB) ? '1 : '0;
            'b100: result = dataA ^ dataB;
            'b101: result = (sel1) ? dataA >>> dataB : dataA >> dataB;
            'b110: result = dataA | dataB;
            'b111: result = dataA & dataB;
        endcase
endmodule
