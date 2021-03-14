/*
+ Octal D-Type Flip-Flop with 3-State Output (SN74LS374)
*/
module SN74LS374 (
       o0,o1,o2,o3,o4,o5,o6,o7,
    d0,d1,d2,d3,d4,d5,d6,d7,
    cp,
    ,oe_
);
    not(cp_,cp);
    not(oe,oe_);
    //level 0
    DFF(q0,q0_,cp_,d0);
    TristatesBuf(o0,oe,q0_);
    //level 1
    DFF(q1,q1_,cp_,d1);
    TristatesBuf(o1,oe,q1_);
    //level 2
    DFF(q2,q2_,cp_,d2);
    TristatesBuf(o2,oe,q2_);
    //level 3
    DFF(q3,q3_,cp_,d3);
    TristatesBuf(o3,oe,q3_);
    //level 4
    DFF(q4,q4_,cp_,d4);
    TristatesBuf(o4,oe,q4_);
    //level 5
    DFF(q5,q5_,cp_,d5);
    TristatesBuf(o5,oe,q5_);
    //level 6
    DFF(q6,q6_,cp_,d6);
    TristatesBuf(o6,oe,q6_);
    //level 7
    DFF(q7,q7_,cp_,d7);
    TristatesBuf(o7,oe,q7_);
endmodule