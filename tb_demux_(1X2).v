`timescale 1ns/1ps

module tb;

reg D, S;
wire Y0, Y1;

demux1x2 uut (
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    D = 0; S = 0; #10;
    D = 1; S = 0; #10;
    D = 0; S = 1; #10;
    D = 1; S = 1; #10;

    #10 $finish;
end

endmodule
