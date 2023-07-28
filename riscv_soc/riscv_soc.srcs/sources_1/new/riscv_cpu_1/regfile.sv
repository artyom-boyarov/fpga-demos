module regfile #(
    parameter WIDTH = 32,
    parameter REG_WIDTH = 5,
    parameter N_REGS = 32
) (
    input logic clk,
    input logic we,
    input logic [$clog2(WIDTH)-1:0] RegA,
    input logic [$clog2(WIDTH)-1:0] RegB,
    input logic [$clog2(WIDTH)-1:0] RegW,
    input logic [WIDTH-1:0] WData,

    output logic [WIDTH-1:0] RDataA,
    output logic [WIDTH-1:0] RDataB,

    output logic[WIDTH-1:0] x1, x2, x3, x4, x5, x6
);

  logic [WIDTH-1:0] regs[(2**REG_WIDTH)-1:0];

    initial begin
        regs[0] = 0;
    end
  always_comb begin
    RDataA = regs[RegA];
    RDataB = regs[RegB];

    x1 = regs[1];
    x2 = regs[2];
    x3 = regs[3];
    x4 = regs[4];
    x5 = regs[5];
    x6 = regs[6];
  end

  always_ff @(posedge clk) if (we) if (RegW != 0) regs[RegW] <= WData;


endmodule
