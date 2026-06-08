`timescale 1ns/1ps

module tb;

parameter N = 8;

reg [N-1:0] in;
reg [$clog2(N)-1:0] sel;
wire out;

mux #(N) uut (
    .in(in),
    .sel(sel),
    .out(out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    in = 8'b10110010;

    sel = 0; #10;
    sel = 1; #10;
    sel = 2; #10;
    sel = 3; #10;
    sel = 4; #10;
    sel = 5; #10;
    sel = 6; #10;
    sel = 7; #10;

    $finish;
end

endmodule
