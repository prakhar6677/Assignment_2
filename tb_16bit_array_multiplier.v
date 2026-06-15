`timescale 1ns/1ps

module tb_array_multiplier_16bit;

    reg  [15:0] A;
    reg  [15:0] B;
    wire [31:0] Product;

    array_multiplier_16bit uut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin

        // EPWave dump
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_array_multiplier_16bit);

        $display("Time\tA\tB\tProduct");
        $monitor("%0t\t%d\t%d\t%d",
                 $time, A, B, Product);

        A = 16'd10;     B = 16'd20;     #10;   // 200
        A = 16'd100;    B = 16'd50;     #10;   // 5000
        A = 16'd255;    B = 16'd255;    #10;   // 65025
        A = 16'd1000;   B = 16'd1000;   #10;   // 1000000
        A = 16'd1234;   B = 16'd5678;   #10;
        A = 16'd32767;  B = 16'd2;      #10;
        A = 16'd65535;  B = 16'd65535;  #10;

        $finish;

    end

endmodule
