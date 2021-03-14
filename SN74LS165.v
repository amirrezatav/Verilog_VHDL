/*
+ 8-Bit Parallel to Serial Shift Register (SN74LS165) - 132
*/
module SN74LS165(
    out,out_,
    ds,cp1,cp2,pl_,
    p0,p1,p2,p3,p4,p5,p6,p7
);
    input  ds,cp1,cp2,pl_,p0,p1,p2,p3,p4,p5,p6,p7;
    output out,out_;
    //leve1 
    not(ds_,ds);
    not(ds,ds_);
    not(pl,pl_);
    and(w1,cp1,pl_);
    and(w2,cp2,pl_);
    not(w3_,w3);
    //leve2
    nand(pre0,p0,pl);
    not(pre0_,pre0);
    nand(cle0,pl,pre0);
    not(cle0_,cle0);
    SRFF(q0,q0_,ds,ds_,cle0_,pre0_,w3_);
    //leve3
    nand(pre1,p1,pl);
    not(pre1_,pre1);
    nand(cle1,pl,pre1);
    not(cle1_,cle1);
    SRFF(q1,q1_,q0,q0_,cle1_,pre1_,w3_);
    //leve4
    nand(pre2,p2,pl);
    not(pre2_,pre2);
    nand(cle2,pl,pre2);
    not(cle2_,cle2);
    SRFF(q2,q2_,q1,q1_,cle2_,pre2_,w3_);
    //leve5
    nand(pre3,p3,pl);
    not(pre3_,pre3);
    nand(cle3,pl,pre3);
    not(cle3_,cle3);
    SRFF(q3,q3_,q2,q2_,cle3_,pre3_,w3_);
    //leve6
    nand(pre4,p4,pl);
    not(pre4_,pre4);
    nand(cle4,pl,pre4);
    not(cle4_,cle4);
    SRFF(q4,q4_,q3,q3_,cle4_,pre4,w3_);
     //leve7
    nand(pre5,p5,pl);
    not(pre5_,pre5);
    nand(cle5,pl,pre5);
    not(cle5_,cle5);
    SRFF(q5,q5_,q4,q4_,cle5_,pre5,w3_);
     //leve8
    nand(pre6,p6,pl);
    not(pre6_,pre6);
    nand(cle6,pl,pre6);
    not(cle6_,cle6);
    SRFF(q6,q6_,q5,q5_,cle5_,pre5,w3_);
     //leve9
    nand(pre7,p7,pl);
    not(pre7_,pre7);
    nand(cle7,pl,pre7);
    not(cle7_,cle7);
    SRFF(out,out_,q6,q6_,cle7_,pre7,w3_);
<<<<<<< HEAD
endmodule
=======
endmodule
>>>>>>> d260b665c9410f6adf18d3aab88b4595204d03b9
