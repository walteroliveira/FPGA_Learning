 module segment7(
     bcd,
     seg1,
	  seg2
    );
     
     //Declare inputs,outputs and internal variables.
     input [4:0] bcd;
     output [7:0] seg1, seg2;
     reg [7:0] seg1, seg2, bcd1, bcd2;

//always block for converting bcd digit into 7 segment format
    always @(bcd)
    begin
		bcd1 = bcd % 10;
		bcd2 = bcd / 10;
        case (bcd1) //case statement
            0 : seg1 = 8'b11000000; 
				1 : seg1 = 8'b11111001;
				2 : seg1 = 8'b10100100;
            3 : seg1 = 8'b10110000;
            4 : seg1 = 8'b10011001;
            5 : seg1 = 8'b10010010;
            6 : seg1 = 8'b10000011;
            7 : seg1 = 8'b11111000;
            8 : seg1 = 8'b10000000;
            9 : seg1 = 8'b10011000;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg1 = 8'hff; 
		  endcase
        
		  case (bcd2) //case statement
            0 : seg2 = 8'b11000000; 
				1 : seg2 = 8'b11111001;
				2 : seg2 = 8'b10100100;
            3 : seg2 = 8'b10110000;
            4 : seg2 = 8'b10011001;
            5 : seg2 = 8'b10010010;
            6 : seg2 = 8'b10000011;
            7 : seg2 = 8'b11111000;
            8 : seg2 = 8'b10000000;
            9 : seg2 = 8'b10011000;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg2 = 8'hff; 
        endcase
    end
    
endmodule