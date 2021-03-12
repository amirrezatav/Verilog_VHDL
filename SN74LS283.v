/*
+ 4-Bit Bianry Full Adder With Fast Carry (SN74LS283) -  154
*/
module SN74LS283(
    out1,out2,out3,carry4
    carry0,
    a1,b1,
    a2,b2,
    a3,b3,
    a4,b4,
);
    input  carry0,a1,b1,a2,b2,a3,b3,a4,b4,;
    output  out1,out2,out3,carry4;
    //level 1 
    not(c0_,c0);

    nor(w11,a1,b1);
    nand(w12,a1,b1);

    nor(w21,a2,b2);
    nand(w22,a2,b2);

    nor(w31,a3,b3);
    nand(w32,a3,b3);

    nor(w41,a4,b4);
    nand(w42,a4,b4);

    // level 2 
    not(wz01,c0_);
    not(w11_,w11);
    and(wz02,w11_,w12);

    and(wz11,c0_,w12);
    buf(wz12,w11);
    nor(wz13,wz11,wz12);
    not(w21_,w21);
    and(wz14,w21_,w22);

    and(wz21,c0_,w12,w22);
    and(wz22,w22,w11);
    buf(wz23,w21);
    nor(wz24,wz21,wz22,wz23);
    not(w31_,w31);
    and(wz25,w31_,w32);

    and(wz31,c0_,w12,w22,w32);
    and(wz32,w32,w22,w11);
    and(wz33,w32,w21);
    buf(wz34,w31);
    nor(wz35,wz31,wz32,wz33,wz34);
    not(w31_,w31);
    and(wz36,w31,w32);

    and(wz41,c0_,w12,w22,w32,w42);
    and(wz42,w42,w32,w22,w11);
    and(wz43,w32,w42,w21);
    and(wz44,w42,w31);
    buf(wz45,w41);
    nor(carry4,wz41,wz42,wz43,wz44,wz45);

    //level 3 
    xor(out1,wz01,wz02);
    xor(out2,wz13,wz14);
    xor(out3,wz24,wz25);
    xor(out4,wz35,wz36);

endmodule