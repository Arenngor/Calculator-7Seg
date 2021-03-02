`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2019 10:36:07 AM
// Design Name: 
// Module Name: test_controller
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


module test_controller;
    reg [7:0]   A;
    reg [7:0]   B;
    reg [4:0]   BTN;
    reg clk;
    
    wire [7:0]  Q;

    controller uut(.A(A), .B(B), .BTN(BTN), .clk(clk), .Q(Q));
    
    initial begin
    A = 4;
    B = 2;
    clk = 0;
    BTN = 1;
    #10
    forever #10 clk = ~clk;
    end
    
   always @(posedge clk) begin
    //if(BTN == 16)
    //BTN = 1;
    //assign BTN = BTN << 1;
    //end
    
    /* 
    #20
    BTN = 5'b00001;
    
    #20
    BTN = 5'b00010;
        
    #20
    BTN = 5'b00100;
            
    #20
    BTN = 5'b01000;

    #20
    BTN = 5'b10000;
                    
    #20
    BTN = 5'b00001;
    
    #20
    BTN = 5'b10000;
    
    #20
    BTN = 5'b00010;
    
    #20
    BTN = 5'b10000;
    
    #20
    BTN = 5'b00100;
    
    #20
    BTN = 5'b10000;
    
    #20
    BTN = 5'b01000;
    */
    end
endmodule
