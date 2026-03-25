`timescale 1ns/1ps
module tb_ENCODER_4TO2;
    reg en;
    reg i0; reg i1;
    reg i2; reg i3;
    wire y1; wire y2;
    
    ENCODER_4TO2 dut(
        .en(en),
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .y1(y1),
        .y2(y2));
    
    //Input Stimulus
    initial begin
        en=0;
            i3=0;i2=0;i1=0;i0=0;    #10;
            i3=0;i2=0;i1=0;i0=1;    #10;
            i3=0;i2=0;i1=1;i0=0;    #10;
        
        en=1;
            i3=0;i2=0;i1=0;i0=0;    #10;
            i3=0;i2=0;i1=0;i0=1;    #10;
            i3=0;i2=0;i1=1;i0=0;    #10;
            i3=0;i2=0;i1=1;i0=1;    #10;
            i3=0;i2=1;i1=0;i0=0;    #10;
            i3=0;i2=1;i1=0;i0=1;    #10;
            i3=0;i2=1;i1=1;i0=0;    #10;
            i3=0;i2=1;i1=1;i0=1;    #10;
            
            i3=1;i2=0;i1=0;i0=0;    #10;
            i3=1;i2=0;i1=0;i0=1;    #10;
            i3=1;i2=0;i1=1;i0=0;    #10;
            i3=1;i2=0;i1=1;i0=1;    #10;
            i3=1;i2=1;i1=0;i0=0;    #10;
            i3=1;i2=1;i1=0;i0=1;    #10;
            i3=1;i2=1;i1=1;i0=0;    #10;
            i3=1;i2=1;i1=1;i0=1;    #10;
        $finish;
    end
endmodule