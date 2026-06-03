`timescale 1ns/1ps

module tb;

reg [2:0] a;
wire [7:0] y;

decoder3x8 uut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    a = 3'b000; #10;
    a = 3'b001; #10;
    a = 3'b010; #10;
    a = 3'b011; #10;
    a = 3'b100; #10;
    a = 3'b101; #10;
    a = 3'b110; #10;
    a = 3'b111; #10;

    #10 $finish;
end

endmodule
