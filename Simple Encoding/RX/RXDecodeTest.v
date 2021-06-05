module RXDecodeTest;
    reg [9:0] num;
initial
    begin
        num = 10'b0111010011;
        #10 num = 10'b0111111011;
        #10 num = 10'b0111011011;
        #10 num = 10'b0110111011;
        #10 num = 10'b0101111011;
        #10 num = 10'b0011111011;
        #10 num = 10'b0001111011;
        #10 num = 10'b0110011011;
        #10 num = 10'b0111100011;
    end
initial
    #200 $finish;
    RXDecode RX_inst(num);
endmodule