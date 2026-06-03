module nor_using_mux(
    input A,
    input B,
    output Y
);

wire not_B;

// Inverter for B
assign not_B = ~B;

// 2x1 MUX implementation
assign Y = (A) ? 1'b0 : not_B;

endmodule
