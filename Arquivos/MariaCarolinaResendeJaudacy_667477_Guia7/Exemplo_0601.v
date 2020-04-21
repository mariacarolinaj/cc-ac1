// -------------------------
// Exemplo_0601 - GATES
// Nome: Maria Carolina Resende Jaudacy
// Matricula: 667477
// -------------------------
// gates
// -------------------------
module gates (input a, input b, output s0, output s1);
// descrever por portas
 and AND1 (s0, a, b);
 or OR1 (s1 , a, b);
endmodule // gates
module test_main;
// ------------------------- definir dados
 reg a;
 reg b;
 wire s0;
 wire s1;
 
 gates GATES (a, b, s0, s1);
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0601 - Maria Carolina Resende Jaudacy - 667477");
 $display("Test LU's module");
 $display(" a b s0(AND) s1(OR)");

 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b", a, b, s0, s1);
 a = 1'b0; b = 1'b0;
 #1 a = 1'b0; b = 1'b1;
 #1 a = 1'b1; b = 1'b0;
 #1 a = 1'b1; b = 1'b1;
 end
endmodule // test_main