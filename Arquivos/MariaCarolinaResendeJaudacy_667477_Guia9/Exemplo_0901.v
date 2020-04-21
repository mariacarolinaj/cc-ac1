// -------------------------
// Gerador de Clock
// Nome: Maria Carolina Resende Jaudacy
// Matricula: 667477
// -------------------------

module clock ( output clk );
reg clk;
initial
 begin
 clk = 1'b0;
 end
always
 begin
 #12 clk = ~clk;
 end
endmodule

module Exemplo_0901;
wire clk;
clock CLK1 ( clk );
initial begin
 $dumpfile ( "Exemplo_0901.vcd" );
 $dumpvars;
 #120 $finish;
end
endmodule