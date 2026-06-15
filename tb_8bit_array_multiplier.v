`timescale 1ns/1ps

module tb_array_multiplier_8bit;

    reg  [7:0] A;
    reg  [7:0] B;
    wire [15:0] Product;

    array_multiplier_8bit uut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin

        // EPWave dump
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_array_multiplier_8bit);

        $display("Time\tA\tB\tProduct");
        $monitor("%0t\t%d\t%d\t%d",
                 $time, A, B, Product);

        A = 8'd5;    B = 8'd3;    #10;   // 15
        A = 8'd10;   B = 8'd12;   #10;   // 120
        A = 8'd15;   B = 8'd15;   #10;   // 225
        A = 8'd25;   B = 8'd4;    #10;   // 100
        A = 8'd100;  B = 8'd2;    #10;   // 200
        A = 8'd127;  B = 8'd2;    #10;   // 254
        A = 8'd255;  B = 8'd255;  #10;   // 65025

        $finish;
    end

endmodule
