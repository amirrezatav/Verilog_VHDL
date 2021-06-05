module TestChannel();
    wire [10:0] dout;
    reg [10:0] din;
    integer i ;
    initial begin
        for (i = 0;i <10 ;i = i + 1 ) begin
           din = $random % 900000000 + 1000000000 ;  // din in the range 1000000000 to 9999999999
           #10 $display("din = %b , dout = %b , checkSumAtStart = %b , checkSumAtEnd = %b , dataAtStart = %b , dataAtEnd = %b",
            din, dout , {din[7],din[3],din[1],din[0]} , {dout[7],dout[3],dout[1],dout[0]} , {din[10:8],din[6:4],din[2]} , {dout[10:8],dout[6:4],dout[2]} );
        end
    end
Channel ch_intit(dout , din);
endmodule