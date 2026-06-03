`timescale 1ns/1ps

module tb;

reg [3:0] d;
wire [1:0] y;

encoder4x2 uut (
    .d(d),
    .y(y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    d = 4'b0001; #10;
    d = 4'b0010; #10;
    d = 4'b0100; #10;
    d = 4'b1000; #10;

    #10 $finish;
end

endmodule
