`timescale 1ns/1ps

module tb;

reg [7:0] D;
wire [2:0] Y;

priority_encoder8x3 uut (
    .D(D),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // Single active inputs
    D = 8'b00000001; #10;
    D = 8'b00000010; #10;
    D = 8'b00000100; #10;
    D = 8'b00001000; #10;
    D = 8'b00010000; #10;
    D = 8'b00100000; #10;
    D = 8'b01000000; #10;
    D = 8'b10000000; #10;

    // Multiple active inputs
    D = 8'b00101010; #10;   // D5 highest
    D = 8'b10101010; #10;   // D7 highest
    D = 8'b01010101; #10;   // D6 highest

    #10 $finish;

end

endmodule
