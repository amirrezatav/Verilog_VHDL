/*
- Octal Transparent Latch with 3-state outputs (SN74LS373) - 228
*/
module moduleName (
    o0,o1,o2,o3,o4,o5,o6,o7,
    d0,d1,d2,d3,d4,d5,d6,d7,le
    ,oe_
);
    output o0,o1,o2,o3,o4,o5,o6,o7;
    input d0,d1,d2,d3,d4,d5,d6,d7,le,oe_;
    not(le_,le);
    not(oe,oe_);
    
    DLatch(q0_,le_,d0);
    DLatch(q1_,le_,d1);
    DLatch(q2_,le_,d2);
    DLatch(q3_,le_,d3);
    DLatch(q4,le_,d4);
    DLatch(q5_,le_,d5);
    DLatch(q6_,le_,d6);
    DLatch(q7_,le_,d7);

    TristatesBuf(o0,oe,q0_);
    TristatesBuf(o1,oe,q1_);
    TristatesBuf(o2,oe,q2_);
    TristatesBuf(o3,oe,q3_);
    TristatesBuf(o4,oe,q4_);
    TristatesBuf(o5,oe,q5_);
    TristatesBuf(o6,oe,q6_);
    TristatesBuf(o7,oe,q7_);

endmodule