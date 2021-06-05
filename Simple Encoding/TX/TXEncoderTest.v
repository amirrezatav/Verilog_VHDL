module TXEncoderTest;
    wire [9:0] dout;
    reg [7:0]  din;
    integer i;
    initial begin
        for (i = 0; i < 10 ; i = i + 1 ) begin
            #10 din = $random % 9000000 + 10000000 ;  // din in the range 10000000 to 9999999
        end
    end
    initial
        #200 $finish;
    TXEncoder TXEncoder_inst(dout , din);
endmodule