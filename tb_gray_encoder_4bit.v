`timescale 1ns/1ps

module tb;

reg [3:0] B;
wire [3:0] G;

gray_encoder uut (
    .B(B),
    .G(G)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    B = 4'b0000; #10;
    B = 4'b0001; #10;
    B = 4'b0010; #10;
    B = 4'b0011; #10;
    B = 4'b0100; #10;
    B = 4'b0101; #10;
    B = 4'b0110; #10;
    B = 4'b0111; #10;
    B = 4'b1000; #10;
    B = 4'b1001; #10;

    #10 $finish;

end

endmodule
