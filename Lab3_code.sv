module Dsd_Lab_3(input wire a,b,c,
                 output  x,y

    );
    wire g,h,f;
    assign g=~c;    //Not gate
    assign h=a|b;  // oR gate
    assign f=~(a&b); // Nand gate
  
    assign x=g^h;  // output  
    assign y=h & (f^h);// Output
endmodule
