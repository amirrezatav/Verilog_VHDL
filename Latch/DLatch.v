module DLatch (
    out_, // output
    einput_ // enable
    dinput, // input 
);
output out_;
input dinput,einput_ ;
    //Level 1 
    not(dinput_,dinput);
    not(einput,einput_)
    and(w1,einput,dinput_);
    and(w2,einput,dinput);
    // Level 2 
    nor(out_,w2,out);
    nor(out,w1,out_);
endmodule
