`timescale 1ns/1ps

module tb_booth_multiplier_32bit;

    reg  signed [31:0] M;
    reg  signed [31:0] Q;
    wire signed [63:0] Product;

    booth_multiplier_32bit uut (
        .M(M),
        .Q(Q),
        .Product(Product)
    );

    initial begin

        // Generate VCD for EPWave
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_booth_multiplier_32bit);

        $display("----------------------------------------------------");
        $display("      M            Q            Product");
        $display("----------------------------------------------------");

        M = 32'd15;          Q = 32'd10;         #10;
        M = -32'd20;         Q = 32'd5;          #10;
        M = 32'd1000;        Q = -32'd25;        #10;
        M = -32'd500;        Q = -32'd40;        #10;
        M = 32'd123456;      Q = 32'd789;        #10;
        M = 32'd2147483647;  Q = 32'd1;          #10;
        M = -32'd2147483648; Q = 32'd1;          #10;

        $finish;

    end

    initial begin
        $monitor("%d\t%d\t%d",
                 M, Q, Product);
    end

endmodule
