module semaforo_3ruas(
    input logic [2:0] ABC,
    output logic VDA, VMA, VDB, VMB, VDC, VMC);
    always_comb begin
        case(ABC)
        0: begin
            VDA<= 1;
            VMB <= 1;
            VMC <= 1;
            VMA <= 0;
            VDB <= 0;
            VDC <= 0;
        end
        1: begin
            VDA <= 0;
            VDB <= 0;
            VMC <= 0;
            VDC <= 1;
            VMA <= 1;
            VMB <= 1;
        end
        2: begin
            VDA <= 0;
            VDB <= 1;
            VMC <= 1;
            VDC <= 0;
            VMA <= 1;
            VMB <= 0;
        end
        3: begin
            VDA <= 0;
            VDB <= 1;
            VDC <= 0;
            VMA <= 1;
            VMB <= 0;
            VMC <= 1;
        end
        4: begin
            VDA <= 1;
            VDB <= 0;
            VDC <= 0;
            VMA <= 0;
            VMB <= 1;
            VMC <= 1;
        end
        5: begin
            VDA <= 0;
            VDB <= 0;
            VDC <= 1;
            VMA <= 1;
            VMB <= 1;
            VMC <= 0;
        end
        6: begin
            VDA <= 1;
            VDB <= 0;
            VDC <= 0;
            VMA <= 0;
            VMB <= 1;
            VMC <= 1;
        end
        7: begin
            VDA <= 1;
            VDB <= 0;
            VDC <= 0;
            VMA <= 0;
            VMB <= 1;
            VMC <= 1;
        end   
        endcase
    end
endmodule