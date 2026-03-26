`timescale 1ns/1ps
module ENCODER_8TO3(
    input wire en,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    
    input wire i4,
    input wire i5,
    input wire i6,
    input wire i7,
    
    output reg y1,
    output reg y2,
    output reg y3
);
    always@(*)begin
        if(!en)begin
            y1 = 1'bz;
            y2 = 1'bz;
            y3 = 1'bz;
        end
        else begin
            y1 = i7 | i5 | i3 | i1;
            y2 = i7 | i6 | i3 | i2;
            y3 = i7 | i6 | i5 | i4;
        end
    end  
endmodule