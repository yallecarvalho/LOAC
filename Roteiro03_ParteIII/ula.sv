// Write your modules here!
             
module ULA(input logic signed [7:0] A, B,
           input logic [1:0] F,
           output logic signed [7:0] saida,
           output logic FLAG_O);
  
  always_comb begin
    case(F)
      2'b00: begin
        saida <= A & B; 
        FLAG_O <= 0;
      end
      2'b01: begin
        saida <= A | B; 
        FLAG_O <= 0; 
      end
      2'b10: begin 
        saida <= A + B;
        if((A > 0 && B > 0 && saida < 0) || (A < 0 && B < 0 && saida > 0))
 		  FLAG_O <= 1;
        else 
          FLAG_O <= 0;
      end
      2'b11: begin
        saida <= A - B;
        if((A > 0 && B < 0 && saida < 0) || (A < 0 && B > 0 && saida > 0))
          FLAG_O <= 1;
        else 
          FLAG_O <= 0;
      end
    endcase
  end
        
  
  
endmodule