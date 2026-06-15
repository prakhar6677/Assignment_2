module booth_multiplier_8bit(
    input  signed [7:0] M,
    input  signed [7:0] Q,
    output reg signed [15:0] Product
);

    integer i;

    reg signed [7:0] A;
    reg signed [7:0] Q_reg;
    reg Q_1;
    reg signed [7:0] M_reg;

    reg signed [16:0] temp;

    always @(*) begin

        A     = 8'd0;
        Q_reg = Q;
        Q_1   = 1'b0;
        M_reg = M;

        for(i = 0; i < 8; i = i + 1) begin

            case ({Q_reg[0], Q_1})
                2'b01: A = A + M_reg;
                2'b10: A = A - M_reg;
                default: ;
            endcase

            temp = {A, Q_reg, Q_1};

            // Arithmetic right shift
            temp = temp >>> 1;

            A     = temp[16:9];
            Q_reg = temp[8:1];
            Q_1   = temp[0];

        end

        Product = {A, Q_reg};

    end

endmodule
