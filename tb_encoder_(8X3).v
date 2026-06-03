`timescale 1ns/1ps

module tb;

reg [7:0] d;
wire [2:0] y;

encoder8x3 uut (
    .d(d),
    .y(y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    d = 8'b00000001; #10;
    d = 8'b00000010; #10;
    d = 8'b00000100; #10;
    d = 8'b00001000; #10;
    d = 8'b00010000; #10;
    d = 8'b00100000; #10;
    d = 8'b01000000; #10;
    d = 8'b10000000; #10;

    #10 $finish;
end

endmodule
