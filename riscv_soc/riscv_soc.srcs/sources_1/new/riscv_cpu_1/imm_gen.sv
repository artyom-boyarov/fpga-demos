module imm_gen(
    input logic[31:0] instruction, 
    input logic[2:0] imm_sel, 
    output logic[31:0] immediate
);
	always_comb begin
		case(imm_sel)
			3'b000: // I-type
        		immediate = {{20{instruction[31]}}, instruction[31:20]};
			3'b001: // S-type
				immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
			3'b010: // Branches
				immediate = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};
			3'b011: // auipc, lui
				immediate = {instruction[31:12], 12'b0};
			3'b100: // jal
				immediate = { {11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
			default:
				immediate = 0;
		endcase
	end
endmodule
