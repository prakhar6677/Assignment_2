`timescale 1ns/1ps

module tb;

reg I0, I1, S;
wire Y;

mux2x1 uut (
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    I0 = 0; I1 = 1; S = 0; #10;
    I0 = 0; I1 = 1; S = 1; #10;

    I0 = 1; I1 = 0; S = 0; #10;
    I0 = 1; I1 = 0; S = 1; #10;

    I0 = 1; I1 = 1; S = 0; #10;
    I0 = 1; I1 = 1; S = 1; #10;

    I0 = 0; I1 = 0; S = 0; #10;
    I0 = 0; I1 = 0; S = 1; #10;

    #10 $finish;
end

endmodule
