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