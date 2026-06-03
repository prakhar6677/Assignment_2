`timescale 1ns/1ps

module tb;

reg D;
reg [2:0] S;
wire [7:0] Y;

demux1x8 uut (
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    D = 1;

    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    D = 0;

    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    #10 $finish;

end

endmodule
