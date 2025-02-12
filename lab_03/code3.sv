
module code3(input logic a,b,c,
             output logic  x,y

    );
    logic n,o,na;
    assign n=~c;    //Not gate
    assign o=a|b;  // oR gate
    assign na=~(a&b); // Nand gate
  
    assign x=n ^ o;  // output  
    assign y=o & (na^o);// Output
endmodule