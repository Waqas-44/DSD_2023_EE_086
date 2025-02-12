`timescale 1ns / 10ps
module lab3_tb();

logic a1;
logic b1;
logic c1;
logic x1;
logic y1;
    //map//
code3 UUT(
.a(a1),
.b(b1),
.c(c1),
.x(x1),
.y(y1)
);
initial 
begin
 
a1 = 0; b1 = 0; c1 = 0;
#10;
a1 = 0; b1 = 0; c1 = 1;
#10;
a1 = 0; b1 = 1; c1 = 0;
#10;
a1 = 0; b1 = 1; c1 = 1;
#10;
a1 = 1; b1 = 0; c1 = 0;
#10;
a1 = 1; b1 = 0; c1 = 1;
#10;
a1 = 1; b1 = 1; c1 = 0;
#10;   a1 = 1; b1 = 1; c1 = 1;
#10;
$stop;
end
//waveform block//
initial 
begin
$monitor("a=%b, b=%b, c=%b, x=%b,y=%b", a1,b1,c1,x1,y1);
end
endmodule




    