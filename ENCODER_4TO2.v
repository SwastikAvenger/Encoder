`timescale 1ns/1ps
module ENCODER_4TO2(
    input wire en,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    output reg y1,
    output reg y2
);
    always@(*)begin
        if(!en)begin
            assign y1 = 1'bz;
            assign y2 = 1'bz;
        end
        else begin
            assign y1 = i0|i2;
            assign y2 = i1|i3;
        end
    end
endmodule