`timescale 1ns/1ps

module tb;

reg [9:0] D;
wire [3:0] BCD;

bcd_encoder uut (
    .D(D),
    .BCD(BCD)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    D = 10'b0000000001; #10; // 0
    D = 10'b0000000010; #10; // 1
    D = 10'b0000000100; #10; // 2
    D = 10'b0000001000; #10; // 3
    D = 10'b0000010000; #10; // 4
    D = 10'b0000100000; #10; // 5
    D = 10'b0001000000; #10; // 6
    D = 10'b0010000000; #10; // 7
    D = 10'b0100000000; #10; // 8
    D = 10'b1000000000; #10; // 9

    #10 $finish;

end

endmodule
