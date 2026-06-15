module booth_multiplier_32bit (
    input  signed [31:0] M,
    input  signed [31:0] Q,
    output reg signed [63:0] Product
);

    integer i;

    reg signed [31:0] A;
    reg signed [31:0] Q_reg;
    reg Q_1;
    reg signed [64:0] temp;

    always @(*) begin

        A     = 32'd0;
        Q_reg = Q;
        Q_1   = 1'b0;

        for (i = 0; i < 32; i = i + 1) begin

            case ({Q_reg[0], Q_1})
                2'b01: A = A + M;
                2'b10: A = A - M;
                default: ;
            endcase

            temp = {A, Q_reg, Q_1};

            // Arithmetic Right Shift
            temp = $signed(temp) >>> 1;

            A     = temp[64:33];
            Q_reg = temp[32:1];
            Q_1   = temp[0];

        end

        Product = {A, Q_reg};

    end

endmodule
