`timescale 1ns/1ps

module priority_encoder_tb;

reg [3:0] din;
wire [1:0] y;
wire valid;

priority_encoder uut (
    .din(din),
    .y(y),
    .valid(valid)
);

initial begin

    $monitor("Time=%0t | Input=%b | Output=%b | Valid=%b",
             $time, din, y, valid);

    din = 4'b0000;
    #10;

    din = 4'b0001;
    #10;

    din = 4'b0010;
    #10;

    din = 4'b0100;
    #10;

    din = 4'b1000;
    #10;

    din = 4'b1010;
    #10;

    din = 4'b0111;
    #10;

    din = 4'b1111;
    #10;

    $finish;
end

endmodule
