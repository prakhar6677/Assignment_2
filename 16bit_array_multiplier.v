module array_multiplier_16bit (
    input  [15:0] A,
    input  [15:0] B,
    output [31:0] Product
);

    wire [15:0] pp [15:0];

    assign pp[0]  = A & {16{B[0]}};
    assign pp[1]  = A & {16{B[1]}};
    assign pp[2]  = A & {16{B[2]}};
    assign pp[3]  = A & {16{B[3]}};
    assign pp[4]  = A & {16{B[4]}};
    assign pp[5]  = A & {16{B[5]}};
    assign pp[6]  = A & {16{B[6]}};
    assign pp[7]  = A & {16{B[7]}};
    assign pp[8]  = A & {16{B[8]}};
    assign pp[9]  = A & {16{B[9]}};
    assign pp[10] = A & {16{B[10]}};
    assign pp[11] = A & {16{B[11]}};
    assign pp[12] = A & {16{B[12]}};
    assign pp[13] = A & {16{B[13]}};
    assign pp[14] = A & {16{B[14]}};
    assign pp[15] = A & {16{B[15]}};

    assign Product =
           ({16'b0, pp[0]})           +
           ({15'b0, pp[1],  1'b0})    +
           ({14'b0, pp[2],  2'b0})    +
           ({13'b0, pp[3],  3'b0})    +
           ({12'b0, pp[4],  4'b0})    +
           ({11'b0, pp[5],  5'b0})    +
           ({10'b0, pp[6],  6'b0})    +
           ({9'b0,  pp[7],  7'b0})    +
           ({8'b0,  pp[8],  8'b0})    +
           ({7'b0,  pp[9],  9'b0})    +
           ({6'b0,  pp[10], 10'b0})   +
           ({5'b0,  pp[11], 11'b0})   +
           ({4'b0,  pp[12], 12'b0})   +
           ({3'b0,  pp[13], 13'b0})   +
           ({2'b0,  pp[14], 14'b0})   +
           ({1'b0,  pp[15], 15'b0});

endmodule
