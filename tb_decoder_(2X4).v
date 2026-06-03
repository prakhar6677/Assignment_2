`timescale 1ns/1ps

module tb;

reg [1:0] a;
wire [3:0] y;

decoder2x4 uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);

    a = 2'b00; #10;
    a = 2'b01; #10;
    a = 2'b10; #10;
    a = 2'b11; #10;

    #10 $finish;
end

endmodule
