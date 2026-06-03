`timescale 1ns/1ps

module tb;

reg D;
reg [1:0] S;

wire Y0, Y1, Y2, Y3;

demux1x4 uut (
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    D = 1;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    D = 0;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    #10 $finish;
end

endmodule
