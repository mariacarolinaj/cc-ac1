// -------------------------
// Exemplo_0603 - AND/NAND/OR/NOR MUX
// Nome: Maria Carolina Resende Jaudacy
// Matricula: 667477
// -------------------------
// gates
// -------------------------
module gates (input a, input b, output sand, output sor, output snand, output snor);
// descrever por portas
 and AND1 (sand, a, b);
 or OR1 (sor , a, b);
 not NOTAND1 (snand, sand);
 not NOTOR1 (snor, sor);
endmodule // gates
// -------------------------
// multiplexer
// -------------------------
module mux (output s, input a, input b, input select);
 // definir dados locais
 wire notselect;
 wire sa;
 wire sb;
 
 // descrever por portas
 not NOT1 (notselect, select);
 and AND1 (sa, a, select);
 and AND2 (sb, b, notselect);
 or OR1 (s, sa, sb);
endmodule // mux
module test_main;
// ------------------------- definir dados
 reg a;
 reg b;
 reg s0;
 reg s1;
 wire sand;
 wire sor;
 wire snand;
 wire snor;
 wire muxGate;
 wire muxNotGate;
 wire s;

 gates GATES (a, b, sand, sor, snand, snor);
 mux MUX1 (muxGate, sand, sor, s0);
 mux MUX2 (muxNotGate, snand, snor, s0);
 mux MUX3 (s, muxGate, muxNotGate, s1);

// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0603 - Maria Carolina Resende Jaudacy - 667477");
 $display("Test LU's module");
 $display("Select (s0/s1): 00 = nor, 01 = or, 10 = nand, 11 = and)");
 $display("  s0   s1    a    b    s");

 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b %4b", s0, s1, a, b, s);
    s0 = 1'b0; s1 = 1'b0; a = 1'b0; b = 1'b0;
 #1 s0 = 1'b0; s1 = 1'b0; a = 1'b0; b = 1'b1;
 #1 s0 = 1'b0; s1 = 1'b0; a = 1'b1; b = 1'b0;
 #1 s0 = 1'b0; s1 = 1'b0; a = 1'b1; b = 1'b1;
 #1 s0 = 1'b0; s1 = 1'b1; a = 1'b0; b = 1'b0;
 #1 s0 = 1'b0; s1 = 1'b1; a = 1'b0; b = 1'b1;
 #1 s0 = 1'b0; s1 = 1'b1; a = 1'b1; b = 1'b0;
 #1 s0 = 1'b0; s1 = 1'b1; a = 1'b1; b = 1'b1;
 #1 s0 = 1'b1; s1 = 1'b0; a = 1'b0; b = 1'b0;
 #1 s0 = 1'b1; s1 = 1'b0; a = 1'b0; b = 1'b1;
 #1 s0 = 1'b1; s1 = 1'b0; a = 1'b1; b = 1'b0;
 #1 s0 = 1'b1; s1 = 1'b0; a = 1'b1; b = 1'b1;
 #1 s0 = 1'b1; s1 = 1'b1; a = 1'b0; b = 1'b0;
 #1 s0 = 1'b1; s1 = 1'b1; a = 1'b0; b = 1'b1;
 #1 s0 = 1'b1; s1 = 1'b1; a = 1'b1; b = 1'b0;
 #1 s0 = 1'b1; s1 = 1'b1; a = 1'b1; b = 1'b1;
 end
endmodule // test_main