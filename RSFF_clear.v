/*
SR Flip-Flop with  Clear
*/
module SRFF_anOutput (
    out, 
    Set,
    Reset,
    CLR_,
    CLK_ // Clock
);
    input Set , Reset , CLR_ , CLK_;
    output out;
    // Level 1 
    nand(w1,Set,CLK_);
    nand(w2,Reset,CLK_);
    // Level 2 
    nand(out,w1,out_);
    nand(out_,w2,out,CLR_);
endmodule
