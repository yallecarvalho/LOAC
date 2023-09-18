// Alarme do sistema de carro que é acionado quando uma das duas portas 
// está aberta e o motor ligado
module alarme(input logic P1, P2, M,
                   output logic alarme);
  always_comb alarme <= M & (P1 | P2);
                            
endmodule
