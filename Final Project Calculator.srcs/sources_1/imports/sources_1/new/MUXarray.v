`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 11:29:56 AM
// Design Name: 
// Module Name: MUXarray
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


module MUXarray #(parameter SIZE=4)(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    input [SIZE-1:0] c,
    input [SIZE-1:0] d,
    input clk,
    output reg [SIZE-1:0] o,
    output reg [SIZE-1:0] v
    );
    
    reg [2:0] i;
    
    always @(posedge clk) begin
        if(i == 4) i <= 0;
        else
        i <= i + 1;
        
        
        if(i == 1) begin
            o <= a;
            v <= 4'b1110;
            end
            
        if(i == 2) begin
            o <= b;
            v <= 4'b1101;
            end
            
        if(i == 3) begin
            o <= c;
            v <= 4'b1011;
            end
            
        if(i == 4) begin
            o <= d;
            v <= 4'b0111;
            end
   
   end
       
endmodule
