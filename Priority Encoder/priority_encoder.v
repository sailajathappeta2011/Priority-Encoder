// 4:2 Priority Encoder

module priority_encoder (
    input  wire [3:0] din,
    output reg [1:0] y,
    output reg valid
);

always @(*) begin
    if (din[3]) begin
        y = 2'b11;
        valid = 1'b1;
    end
    else if (din[2]) begin
        y = 2'b10;
        valid = 1'b1;
    end
    else if (din[1]) begin
        y = 2'b01;
        valid = 1'b1;
    end
    else if (din[0]) begin
        y = 2'b00;
        valid = 1'b1;
    end
    else begin
        y = 2'b00;
        valid = 1'b0;
    end
end

endmodule
