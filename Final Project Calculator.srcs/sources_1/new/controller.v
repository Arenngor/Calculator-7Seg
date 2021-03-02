`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2019 07:30:19 AM
// Design Name: 
// Module Name: controller
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


module controller(
    input [7:0]     A,
    input [7:0]     B,
    input [4:0]     BTN,
    input           clk,
    output reg [15:0]  Q
    );
    
    reg [3:0]    state;
    initial begin
    state = 0;
    end
   
    
    always @(posedge clk) begin
        case(BTN)
        
        default: #10;
        
        5'b00001: Q <= A + B;
        
        5'b00010: Q <= A - B;
        
        5'b00100: Q <= A * B;
        
        5'b01000: Q <= A / B;
        
        5'b10001: Q <= A & B;
        
        5'b10010: Q <= A >> B;
        
        5'b10100: Q <= A | B;
        
        5'b11000: Q <= A << B;
        
        

   endcase
   end
   
   
   
   
  
endmodule
