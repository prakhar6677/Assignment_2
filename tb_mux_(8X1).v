`timescale 1ns/1ps

module tb;

reg [7:0] I;
reg [2:0] S;
wire Y;

mux8x1 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // Input pattern
    I = 8'b10101010;

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
