`timescale 1ns / 1ps

module seg_display(
    input logic [3:0] num,
    input logic [2:0] sel,
    output logic segA, segB, segC, segD, segE, segF, segG,dp,
    output logic an0, an1, an2, an3, an4, an5, an6, an7
    );
    
    always_comb
        begin
        dp = 1;
            case(num)
                4'b0000 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0000001;
                4'b0001 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b1001111;
                4'b0010 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0010010;
                4'b0011 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0000110;
                4'b0100 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b1001100;
                4'b0101 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0100100;
                4'b0110 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0100000;
                4'b0111 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0001111;
                4'b1000 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0000000;
                4'b1001 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0000100;
                4'b1010 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0001000;
                4'b1011 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b1100000;
                4'b1100 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0110001;
                4'b1101 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b1000010;
                4'b1110 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0110000;
                4'b1111 : {segA, segB, segC, segD, segE, segF, segG,dp} = 7'b0111000;
            endcase
        end
        
        always_comb
            begin
                case(sel)
                    3'b000 : an0 = 8'b11111110;
                    3'b001 : an1 = 8'b11111101;
                    3'b010 : an2 = 8'b11111011;
                    3'b011 : an3= 8'b11110111;
                    3'b100 : an4 = 8'b11101111;
                    3'b101 : an5 = 8'b11011111;
                    3'b110 : an6 = 8'b10111111;
                    3'b111 : an7 = 8'b01111111;
                endcase
            end
endmodule