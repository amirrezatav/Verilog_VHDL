module HmamingDecoderTest;
    reg[10:0] din;
    integer i = 0;
    HammingDecoder HammingDecoder_init(din);
    initial begin
        #10 din = 11'b01010011100;
        #10 din = 11'b10010000011;
        #10 din = 11'b11000011000;
        #10 din = 11'b00001101101;
        #10 din = 11'b01111001101;
        #10 din = 11'b11000111011;
        #10 din = 11'b11000101000;
        #10 din = 11'b11000101011;
        #10 din = 11'b00000000000;
    end
    initial 
        #105 $finish;
endmodule
