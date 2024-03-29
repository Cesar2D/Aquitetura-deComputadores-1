/*
    Guia_0103b.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/

module Guia_0103b ();
// define data
    integer x = 13; // decimal
    reg[7:0]b = 0;  // binary

    // actions
    initial 
    begin: main // begin main
    $display("Guia_0103 - Tests");
    $display("x = %d", x);
    $display("b = %8b", b);
    b = x;
    $display("b = %B(2) = %o(8) = %x(16) = %X(16)", b, b, b, b); 
    end // end main
    
endmodule // Guia_0103b