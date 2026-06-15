module array_multiplier_8bit (
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] Product
);

    wire [7:0] pp [7:0];

    assign pp[0] = A & {8{B[0]}};
    assign pp[1] = A & {8{B[1]}};
    assign pp[2] = A & {8{B[2]}};
    assign pp[3] = A & {8{B[3]}};
    assign pp[4] = A & {8{B[4]}};
    assign pp[5] = A & {8{B[5]}};
    assign pp[6] = A & {8{B[6]}};
    assign pp[7] = A & {8{B[7]}};

    assign Product =
           ({8'b0, pp[0]}) +
           ({7'b0, pp[1], 1'b0}) +
           ({6'b0, pp[2], 2'b0}) +
           ({5'b0, pp[3], 3'b0}) +
           ({4'b0, pp[4], 4'b0}) +
           ({3'b0, pp[5], 5'b0}) +
           ({2'b0, pp[6], 6'b0}) +
           ({1'b0, pp[7], 7'b0});

endmodule
