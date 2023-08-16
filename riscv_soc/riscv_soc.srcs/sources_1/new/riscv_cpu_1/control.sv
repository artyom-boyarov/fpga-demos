
module control (
    input  logic [31:0] instruction,
    output logic [ 4:0] rs1, rs2, rd,
    output logic [ 2:0] aluop,

    output logic alu_A_sel, alu_B_sel,
    output logic alu_sel1,

    output logic regfile_we,
    output logic pc_sel,
    output logic [2:0] imm_sel,
    output logic mem_we, mem_rd,
    output logic [1:0] wb_sel,

    output logic[2:0] branch_op,
    input logic br_taken
);
    logic [6:0] opcode;

    always_comb begin
        opcode = instruction[6:0];
    
        rd = instruction[11:7];
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
    
        aluop = '0;
        alu_A_sel = 0;
        alu_B_sel = 0;
        alu_sel1 = 0;
        regfile_we = 0;
        pc_sel = 0;
        imm_sel = '0;
        mem_we = 0;
        wb_sel = '0; // 00 = ALU_RESULT 01 = MEM_OUT 10 = PC+4
        mem_rd = 0;
        
        case (opcode)
          7'b0000011: begin  // Loads
            alu_B_sel = 1;
            regfile_we = 1;
            wb_sel = 'b01;
            mem_rd = 1;
          end
          7'b0110011: begin  // Register arithmetic
            aluop = instruction[14:12];
            alu_sel1 = (instruction[14:12] == 'b101 && instruction[30]) | (instruction[14:12] == 'b000 && instruction[30]);
            regfile_we = 1;
    
          end
          7'b0010011: begin  // Immediate arithmetic
            aluop = instruction[14:12];
            alu_B_sel = 1;
            alu_sel1 = instruction[14:12] == 'b101 && instruction[30];
            regfile_we = 1;
          end
          7'b0010111: begin  // auipc
            alu_A_sel = 1;
            alu_B_sel = 1;
            imm_sel = 'b011;
            regfile_we = 1;
          end
          7'b0100011: begin  // Stores
            mem_we = 1;
            alu_B_sel = 1;
            imm_sel = 1;
          end
          7'b1100011: begin  // Branches
            //pc_sel = branch_taken;
            branch_op = instruction[14:12];
            imm_sel = 3'b010;
            alu_A_sel = 1;
            alu_B_sel = 1;
            pc_sel = br_taken;
    
          end
          7'b1100111: begin  // Jalr
            imm_sel = 3'b000;
            pc_sel = 1;
            regfile_we = 1;
            alu_A_sel = 0;
            alu_B_sel = 1;
            aluop = 000;
    
          end
          7'b1101111: begin  // jal
            imm_sel = 3'b100;
            regfile_we = 1;
            alu_A_sel = 1;
            alu_B_sel = 1;
            aluop = 000;
            pc_sel = 1;
          end
          7'b0110111: begin
            imm_sel = 'b011;
            regfile_we = 1;
            rs1 = 0;
            alu_A_sel = 0;
            alu_B_sel = 1;
          end
    
    
          default: alu_A_sel = '0;
        endcase
    end
endmodule
