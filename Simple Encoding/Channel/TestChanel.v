module TestChannel();
    wire [9:0] dout;
    reg [9:0] din;
    integer i ;
    initial begin
        for (i = 0;i <10 ;i = i + 1 ) begin
           din = $random % 900000000 + 1000000000 ;  // din in the range 1000000000 to 9999999999
           #10 $display("din = %b , dout = %b , checkSumAtStart = %b , checkSumAtEnd = %b , dataAtStart = %b , dataAtEnd = %b",
            din, dout , din[2:0] , dout[2:0]  , din[9:3] ,dout[9:3] );
        end
    end
Channel ch_intit(dout , din);
endmodule