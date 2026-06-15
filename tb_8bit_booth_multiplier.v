`timescale 1ns/1ps

module tb_booth_multiplier_8bit;

    reg signed [7:0] M;
    reg signed [7:0] Q;

    wire signed [15:0] Product;

    booth_multiplier_8bit uut (
        .M(M),
        .Q(Q),
        .Product(Product)
    );

    initial begin

        // Enable EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_booth_multiplier_8bit);

        $display("------------------------------------------------");
        $display(" M\t Q\t Product");
        $display("------------------------------------------------");

        M = 8'd12;   Q = 8'd5;    #10;
        M = -8'd10;  Q = 8'd7;    #10;
        M = 8'd15;   Q = -8'd4;   #10;
        M = -8'd8;   Q = -8'd6;   #10;
        M = 8'd25;   Q = 8'd10;   #10;
        M = 8'd127;  Q = 8'd1;    #10;
        M = -8'd128; Q = 8'd1;    #10;

        $finish;

    end

    initial begin
        $monitor("%d\t%d\t%d",
                 M, Q, Product);
    end

endmodule
