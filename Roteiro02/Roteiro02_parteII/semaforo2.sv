module semaforo_2ruas(
    input logic A,
    output logic VDA, VMA, VDB, VMB);
    
    always_comb 
        if (A == 0) begin
         VMA <= ~A;
         VDB <= ~A; 
         VDA <= A;
         VMB <= A;
        end  else begin
         VDA <= A;
         VMB <= A;
         VMA <= ~A;
         VDB <= ~A;
        end
endmodule