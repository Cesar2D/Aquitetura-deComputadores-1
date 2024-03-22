// ----------------
// Guia0500.v - GATES
// Nome: Vinicius Cesar D'Ascenção Dias
// Matricula: 809958
// ----------------

// ----------------
// f5_gate
// m  a b s
// 0  0 0 0
// 1  0 1 1 <-a'.b
// 2  1 0 0
// 3  1 1 0
// 
// ----------------

module f5a (output s, 
            input a, 
            input b);
    // definir dado local
    wire not_a;

    // descrever por portas
    not NOT1(not_a, a);
    end END1(s, not_a, b);
endmodule // end f5a

// ----------------
// f5_gate
// m  a b s
// 0  0 0 0
// 1  0 1 1 <-a'.b
// 2  1 0 0
// 3  1 1 0
//
// ----------------
module f5b (output s,
            input a, 
            input b,);
    // descrever por expressao
    assign s = ~a & b;
endmodule // end f5b

module test_f5;
// ---------------- definir dados
    reg x;
    reg y;
    wire a, b;

    f5a moduloA(a, x, y);
    f5b moduloB(b, x, y);

// ---------------- parte principal

initial 
begin: main
    $display("Guia0500 - Vinicius Cesar D'Ascencao Dias - 809958");
    $display("Test module");
    $display(" x  y  a  b");

    // projetar testes do modulo
    $monitor(" %4b  %4b  %4b  %4b", x, y, a, b);
    x = 1'b0; y = 1'b0;
#1  x = 1'b0; y = 1'b1;
#1  x = 1'b1; y = 1'b0;
#1  x = 1'b1; y = 1'b1;

end // end main
endmodule // end test_f5