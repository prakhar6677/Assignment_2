`timescale 1ns/1ps

module tb;

reg A, B;
wire Y;

nor_using_mux uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    #10 $finish;

end

endmodule
