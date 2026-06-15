`timescale 1ns/1ps

module tb_booth_multiplier;

    reg signed [3:0] M;
    reg signed [3:0] Q;
    wire signed [7:0] Product;

    booth_multiplier uut (
        .M(M),
        .Q(Q),
        .Product(Product)
    );

    initial begin

        // Required for EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_booth_multiplier);

        $display("Time\tM\tQ\tProduct");

        M = 4'd3;  Q = 4'd2;   #10;
        M = -4'd3; Q = 4'd2;   #10;
        M = 4'd5;  Q = -4'd2;  #10;
        M = -4'd3; Q = -4'd2;  #10;
        M = 4'd7;  Q = 4'd3;   #10;
        M = -4'd8; Q = 4'd1;   #10;

        $finish;
    end

    initial begin
        $monitor("%0t\t%d\t%d\t%d",
                 $time, M, Q, Product);
    end

endmodule
