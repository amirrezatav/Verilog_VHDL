/*
SR Flip-Flop with  Preset and Clear
*/
module SRFF (
    out, 
    out_,
    Set,
    Reset,
    CLR_,
    PRE_,
    CLK_ // Clock
);
    input Set , Reset , PRE_ , CLR_ , CLK_;
    output out , out_ ;
    // Level 1 
    nand(w1,Set,CLK_);
    nand(w2,Reset,CLK_);
    // Level 2 
    nand(out,w1,out_,PRE_);
    nand(out_,w2,out,CLR_);
endmodule
