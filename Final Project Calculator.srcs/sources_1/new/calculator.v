`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2019 09:57:00 AM
// Design Name: 
// Module Name: calculator
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


module calculator(
   input [7:0]     A,
   input [7:0]     B,
   input [4:0]     BTN,
   input           clk,
   output [15:0]    Q,
   output [6:0]    s,
   output [3:0]    b
   //output [3:0]    v 
   );

    
     controller (.A(A), .B(B), .BTN(BTN), .clk(clk), .Q(Q));
     DoubleSevenSegment (.a(Q), .b(b), .seg(s), .clk(clk));
    
    always @(posedge clk) begin
    end
        
    
endmodule
