`timescale 1ns/1ps

module tb;

reg I0, I1, I2, I3;
reg [1:0] S;
wire Y;

mux4x1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // Fixed inputs
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    // Change inputs
    I0 = 1;
    I1 = 0;
    I2 = 1;
    I3 = 0;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    #10 $finish;
end

endmodule
