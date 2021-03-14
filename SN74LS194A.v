/*
+ 4-Bit Bidirectional  Universal Shift Register (SN74LS194As) - 154
*/
module SN74LS194A(
    out1,out2,out3,out4,
    s0,s1,dsr,cp,mr_,dsl,
    p0,p1,p2,p3
);
    input  s0,s1,dsr,cp,mr_,dsl,p0,p1,p2,p3;
    output  out1,out2,out3,out4;
    //leve -1 
    not(cp_,cp);
    not(mr_,mr_);
    not(mr_,mr_);
    not(s1_,s1);
    not(ss1,ss1_);
    not(s0_,s0);
    not(ss0,s0_);
    //level 0
    and(w01,dsr,s1_,ss0);
    and(w02,ss0,ss1,p0);
    and(w03,s0_,ss1,q1);
    and(w04,s0_,s1_,q0);
    nor(w0,w01,w02,w03,w04);
    not(w0_,w0);
    SRFF_anOutput(q0,w0_,w0,mr_,cp_);
    //level 1
    and(w11,q0,s1_,ss0);
    and(w12,ss0,ss1,p1);
    and(w13,s0_,ss1,q2);
    and(w14,s0_,s1_,q1);
    nor(w1,w11,w12,w13,w14);
    not(w1_,w1);
    SRFF_anOutput(q1,w1_,w1,mr_,cp_);
    //level 2
    and(w21,q1,s1_,ss0);
    and(w22,ss0,ss1,p2);
    and(w23,s0_,ss1,q3);
    and(w24,s0_,s1_,q2);
    nor(w2,w21,w22,w23,w24);
    not(w2_,w2);
    SRFF_anOutput(q3,w2_,w2,mr_,cp_);
    //level 3
    and(w31,q2,s1_,ss0);
    and(w32,ss0,ss1,p3);
    and(w33,s0_,ss1,dsl);
    and(w34,s0_,s1_,q3);
    nor(w3,w31,w32,w33,w34);
    not(w3_,w3);
    SRFF_anOutput(q3,w3_,w3,mr_,cp_);
 
endmodule