module riscv_top #(
    parameter WIDTH = 32,
    INSTR_WIDTH = 32,
    MEM_WIDTH = 32,
    REG_WIDTH = 32
)  // 1024 bit memory - 256 instructions
(
    input logic clk,
    input logic reset,

    output logic [REG_WIDTH-1:0] x1,
    x2,
    x3,
    x4,
    x5,
    x6,
    
    // Memory-Mapped I/O
    output logic[3:0] mmio_addr,
    output logic mmio_rd_en,
    output logic mmio_wr_en,
    output logic[7:0] mmio_wr_data,
    input logic[7:0] mmio_rd_data
);



  logic [WIDTH-1:0] pc;

  // Control signals
  //    Instruction memory
  
  logic [INSTR_WIDTH-1:0] instruction;

  //    Regfile
  logic regfile_we;
  logic [4:0] regfile_regA, regfile_regB, regfile_regW;
  logic [31:0] write_back;
  logic [31:0] regfile_dataA, regfile_dataB;

  //    ALU
  logic alu_A_sel, alu_B_sel, alu_sel1; // A sel: 0 = registers 1 = ... B sel: 0 = regsiters 1 = Immediate
  logic[31:0] alu_dataA, alu_dataB, alu_result;
  logic[31:0] immediate;
  logic[2:0] aluop;

  //    Branch unit
  logic branch_taken;
  logic[2:0] branch_op;

  //    Data memory
/*
		input logic[31:0] w_addr,
		input logic[31:0] data,
		input logic[31:0] read_addr,
		input logic[2:0] funct3,
		input logic clk, we,

		output logic[31:0] read_data
*/
  logic[31:0] write_addr, data, read_addr, mem_out, mem0, mem1, mem2, mem3;
  logic[2:0] mem_funct3;
  logic mem_we, mem_rd;


  //Write back
  logic pc_sel;
  logic[1:0] wb_sel;

  logic[2:0] imm_sel;

  logic[31:0] wb_to_pc_sel;

  regfile RegFile (
      .clk(clk),
      .we(regfile_we),
      .RegA(regfile_regA),
      .RegB(regfile_regB),
      .RegW(regfile_regW),
      .WData(write_back),
      .RDataA(regfile_dataA),
      .RDataB(regfile_dataB),
      .x1(x1),
      .x2(x2),
      .x3(x3),
      .x4(x4),
      .x5(x5),
      .x6(x6)
  );

  alu ALU (
    .dataA(alu_dataA),
    .dataB(alu_dataB),
    .operation(aluop),
    .sel1(alu_sel1),
    .result(alu_result)
  );

  control Control (
    .instruction(instruction),
    .rs1(regfile_regA),
    .rs2(regfile_regB),
    .rd(regfile_regW),
    .aluop(aluop),
    .alu_A_sel(alu_A_sel), 
    .alu_B_sel(alu_B_sel),
    .alu_sel1(alu_sel1),
    .regfile_we(regfile_we),
    .pc_sel(pc_sel),
    .imm_sel(imm_sel),
    .mem_we(mem_we),
    .mem_rd(mem_rd),
    .wb_sel(wb_sel),
    .branch_op(branch_op),
    .br_taken(branck_taken)
  );
    // Ignore data memory for now
  datamem dmem(
    .w_addr(alu_result),
    .data(regfile_dataB),
    .read_addr(alu_result),
    .funct3(mem_funct3),
    .clk(clk),
    .we(mem_we),
    .rd(mem_rd),
    .read_data(mem_out),
    .mmio_rd_data(mmio_rd_data),
    .mem0(mem0),
    .mem1(mem1),
    .mem2(mem2),
    .mem3(mem3)
  );
  
  mmio_control MMIO_control (
    .opcode(instruction[6:0]),
    .mem_addr(alu_result),
    .mmio_rd_en(mmio_rd_en),
    .mmio_wr_en(mmio_wr_en)
  );
  
  assign mmio_wr_data = regfile_dataB[7:0];
  assign mmio_addr = alu_result[3:0];

  imm_gen ImmGen (
    .instruction(instruction),
    .imm_sel(imm_sel),
    .immediate(immediate)
  );
  
  logic[31:0] branch_data_A, branch_data_B;
  
  branch Branch(
    .dataA(branch_data_A), 
    .dataB(branch_data_B),
    .funct3(branch_op), 
    .br_taken(branch_taken)
  );
  
  logic[WIDTH-1:0] pc_next;
  assign pc_next = (reset) ? 0 : ( (pc_sel) ? write_back :  pc + 4 ); 
  
  instruction_memory impl_instr_mem (
    .addr(pc_next[11:0]),
    .clk(clk),
    .instruction(instruction)
  );
  
  always_ff @(posedge clk) begin
    pc <= pc_next;
  end


  always_comb begin

    alu_dataA = (alu_A_sel) ? pc : regfile_dataA; // FOR NOW
    alu_dataB = (alu_B_sel) ? immediate : regfile_dataB;
    branch_data_A = regfile_dataA;
    branch_data_B = regfile_dataB;

    mem_funct3 = instruction[14:12];

    case(wb_sel)
	    2'b00 :
		    write_back = alu_result;
	    2'b01:
		    write_back = mem_out;
	    2'b10:
		    write_back = pc+4;
	    default:
		    write_back = alu_result;
	endcase
    end

endmodule
