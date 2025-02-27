`timescale 1 ns / 10 ps


module seg_display_tb();

logic [3:0] num1;
logic [2:0] sel1;
logic  segA1;
logic  segB1;                                     
logic  segC1;
logic  segD1;
logic  segE1;
logic  segF1;
logic  segG1;
logic  An0;
logic  An1;
logic  An2;
logic  An3;
logic  An4;
logic  An5;
logic  An6;
logic  An7;


seg_display UUT (
    .num(num1),
    .sel(sel1),
    .segA(segA1),
    .segB(segB1),
    .segD(segD1),
    .segE(segE1),
    .segF(segF1),
    .segG(segG1),
    .an0(An0),
    .an1(An1),
    .an2(An2),
    .an3(An3),
    .an4(An4),
    .an5(An5),
    .an6(An6),
    .an7(An7)


);

//----Block for inputs----//
initial begin
    num1 = 4'b0000; sel1 = 3'b000;    
    #10;
    num1 = 4'b0001; sel1 = 3'b001;    
    #10;
    num1 = 4'b0010; sel1 = 3'b010;    
    #10;
    num1 = 4'b0011; sel1 = 3'b011;    
    #10;
    num1 = 4'b0100; sel1 = 3'b100;    
    #10;
    num1 = 4'b0101; sel1 = 3'b101;    
    #10;
    num1 = 4'b0110; sel1 = 3'b110;    
    #10;
    num1 = 4'b0111; sel1 = 3'b111;    
    #10;
    num1 = 4'b1000;                     
    #10;
    num1 = 4'b1001;                     
    #10;
    num1 = 4'b1010;                     
    #10;
    num1= 4'b1011;                     
    #10;
    num1 = 4'b1100;                     
    #10;
    num1 = 4'b1101;                     
    #10;
    num1= 4'b1110;                     
    #10;
    num1 = 4'b1111;                     
    #10;
    $stop;
end

//-----Prinitng truth table of Seven Segment LEDs-----//
initial begin
    $monitor("num[3] = %b  num[2] = %b  num[1] = %b  num[0] = %b  | segA = %b  segB = %b  segC = %b  segD = %b  segE = %b  segF = %b  segG = %b", num1[3], num1[2], num1[1], num1[0], segA1, segB1, segC1,segD1,segE1, segF1,segG1);
end    

endmodule