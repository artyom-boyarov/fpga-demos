module datamem
    #(parameter MMIO_START = 0, MMIO_END = 4'hF)
(
		input logic[31:0] w_addr,
		input logic[31:0] data,
		input logic[31:0] read_addr,
		input logic[2:0] funct3,
		input logic clk, we, rd,

		output logic[31:0] read_data,
		input logic[7:0] mmio_rd_data,
		output logic[31:0] mem0, mem1, mem2, mem3
	);
	
	logic[31:0] dmem[63:0]; // Word aligned
	/*
	RISC-V is little endian!

	addr	data[7:0]
	addr+1	data[15:8]
	addr+2	data[23:16]
	addr+3	data[31:24]
	*/
	// Next step - misaligned memory.
	// Currently all reads have to be aligned to a 4-byte boundary. 

	always @ (posedge clk)
	begin
		if (we)
			begin
			    if (w_addr < MMIO_START || w_addr > MMIO_END)
                    case(funct3)
                        'b000: begin// Byte
                            case(w_addr[7:2]) begin
                                2'b00:
                                    dmem[w_addr[7:2]] <= {24'b0, data[7:0]};
                                2'b01:
                                    dmem[w_addr[7:2]] <= {16'b0, data[7:0], dmem[w_addr[7:2]][7:0]};
                                2'b10:
                                    dmem[w_addr[7:2]] <= {8'b0, data[7:0], dmem[w_addr[7:2]][15:0]};
                                2'b11:
                                    dmem[w_addr[7:2]] <= {data[7:0], dmem[w_addr[7:2]][23:0]};
                            end
                            
                         end
                        'b001: begin // Half-word
                            if (w_addr[7:2] == 2'b00)
                                dmem[w_addr[7:2]] <= {16'b0, data[15:0]};
                            else if (w_addr[7:2] == 2'b01)
                                dmem[w_addr[7:2]] <= {8'b0, data[15:0], dmem[w_addr[7:2]][7:0]};
                            else if (w_addr[7:2] == 2'b10)
                                dmem[w_addr[7:2]] <= {data[15:0], dmem[w_addr[7:2]][15:0]};
                        end
                        'b010:	// Word
                            dmem[w_addr[7:2]] <= data;
                        //default:
                        //	dmem[0] <= dmem[0];
                    endcase
			end
		if (rd) begin
		    if (read_addr >= MMIO_START && read_addr <= MMIO_END) 
		      read_data <= {24'b0, mmio_rd_data};
            else
                case(funct3)
                    'b000: // Byte
                        read_data <= {{24{dmem[read_addr[7:2]][7]}}, dmem[read_addr[7:2]][7:0]};
                    'b001: // Half-word
                        read_data <= {{16{dmem[read_addr[7:2]][15]}}, dmem[read_addr[7:2]][15:0]};
                    'b010:	// Word
                        read_data <= {dmem[read_addr[7:2]]};
                endcase
                
        end
	end

	assign mem0 = dmem[0];
	assign mem1 = dmem[1];
	assign mem2 = dmem[2];
	assign mem3 = dmem[3];
endmodule
