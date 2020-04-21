// -------------------------
// Exemplo_0602 - AND/OR MUX
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
 reg select;
 wire e0;
 wire e1;
 wire s;

 gates GATES (a, b, e0, e1);
 mux MUX (s, e0, e1, select);
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0602 - Maria Carolina Resende Jaudacy - 667477");
 $display("Test LU's module (select: 0 = and, 1 = or)");
 $display("select  a    b    s");

 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b", select, a, b, s);
 select = 1'b0; a = 1'b0; b = 1'b0;
 #1 select = 1'b0; a = 1'b0; b = 1'b1;
 #1 select = 1'b0; a = 1'b1; b = 1'b0;
 #1 select = 1'b0; a = 1'b1; b = 1'b1;
 #1 select = 1'b1; a = 1'b0; b = 1'b0;
 #1 select = 1'b1; a = 1'b0; b = 1'b1;
 #1 select = 1'b1; a = 1'b1; b = 1'b0;
 #1 select = 1'b1; a = 1'b1; b = 1'b1;
 end
endmodule // test_main