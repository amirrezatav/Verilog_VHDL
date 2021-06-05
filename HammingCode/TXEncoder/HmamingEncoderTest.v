module HmamingEncoderTest;
    reg[6:0] din;
    wire[10:0] dout;
    integer i = 0;
    HmamingEncoder HmamingEncoder_init(dout , din);
    initial begin
        for (i = 0;i <10 ;i = i +1  ) begin
            #10 din = $random % 1000000 + 999999 ;
        end
        #10 din = 7'b1011001 ;
    end
    initial 
        #105 $finish;
endmodule