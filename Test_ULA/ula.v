module ula (a_op, b_op, opcode, op_out);
  	 parameter WIDTH = 4;
  	 parameter OPWIDTH = 2;
  
  	 input [WIDTH - 1: 0] a_op, b_op;
  	 input [OPWIDTH - 1: 0] opcode;
    	 output reg [WIDTH: 0] op_out;

         always @* begin
     	  case (opcode)
         	 2'b0: op_out = a_op + b_op;
         	 2'b1: op_out = a_op - b_op;
          	 2'b10: op_out = a_op | b_op;
          	 2'b11: op_out = a_op & b_op;
       	  endcase
    	 end
       
endmodule