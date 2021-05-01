module DFlipFlop_Async(
    D,
    CLK,
    CLR,PRE,
    Q,_Q
);
    input D, CLK, CLR, PRE;
    output Q , _Q;
    reg Q , _Q;

    always @(posedge CLK) begin
        if(!CLR) {_Q,Q} <= 2'b10;
        else if(!PRE) {_Q,Q} <= 2'b01;
        else begin
            if (D == 1) {_Q,Q} <= 2'b01;
            else if(D == 0) {_Q,Q} <= 2'b10;
            else if(D == 1'bx) {_Q,Q} <= {Q,_Q};
        end
    end

    always @(posedge CLK) begin
        if(!CLR && !PRE) force {_Q,Q} = 2'bxx;
        else begin 
        release Q;
        release _Q ;
    end

    end
endmodule
