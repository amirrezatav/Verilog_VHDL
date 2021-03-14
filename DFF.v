module DFF (
    out,
    out_,
    CLK_ // clock - active low 
    dinput, // input 
);
output out,out_;
input dinput,CLK_ ;

    //Level 1 
    not(CLK,CLK_);
    nand(w1,w4,w2);
    nand(w2,w1,CLK);
    nand(w3,w2,CLK,w4);
    nand(w4,w3,dinput);

    //Level 2
    nand(out,w2,out_);
    nand(out_,out,w3);
    
endmodule