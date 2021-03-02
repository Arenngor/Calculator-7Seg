`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2019 09:17:41 AM
// Design Name: 
// Module Name: DoubleSevenSegment
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DoubleSevenSegment(
    input [15:0] a,
    input       clk,
    output [3:0] b,
    output [6:0] seg
    );
    

    wire [6:0]  z;
    wire        sel;//clkout
    wire [3:0]  d;
    wire [3:0]  v;
    
    ClockDivider (.clkin(clk), .clkout(sel));
    
    MUXarray #(.SIZE(4)) (.a(a[3:0]), .b(a[7:4]), .c(a[11:8]), .d(a[15:12]), .clk(sel), .o(d), .v(v));
    
    SevenSegmentTruthTable (.N(d), .D(z));
    
    assign b = v;
    assign seg = ~z;
endmodule
