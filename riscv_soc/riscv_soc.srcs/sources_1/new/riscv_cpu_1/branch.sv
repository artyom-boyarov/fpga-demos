module branch(
    input logic[31:0] dataA, 
    input logic[31:0] dataB, 
    input logic[2:0] funct3, 
    output logic br_taken
);
	
	always_comb begin
		case(funct3)
			'b000:
				br_taken = (dataA == dataB);
			'b001:
				br_taken = (dataA != dataB);
			'b100:
				br_taken = (dataA < dataB);
			'b101:
				br_taken = (dataA >= dataB);
			'b110:
				br_taken = (dataA < dataB);
			'b111:
				br_taken = (dataA >= dataB);
			default:
				br_taken = 0;
		endcase
	end
endmodule
