// -------------------------
// Gerador de pulsos
// Nome: Maria Carolina Resende Jaudacy
// Matricula: 667477
// -------------------------

`include "clock.v"
module pulse ( signal, clock );
input clock;
output signal;
reg signal;
always @ ( negedge clock )
 begin
 signal = 1'b1;
 #2 signal = 1'b0;
 #2 signal = 1'b1;
 #2 signal = 1'b0;
 #2 signal = 1'b1;
 #2 signal = 1'b0;
 end
endmodule // pulse

module Exemplo_0907;
wire clock;
clock clk ( clock );
wire p;
pulse pls ( p, clock );
initial begin
 $dumpfile ( "Exemplo0907.vcd" );
 $dumpvars ( 1, clock, p );
 #480 $finish;
end
endmodule // Exemplo_0907