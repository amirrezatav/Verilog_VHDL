module Top();
    reg [6:0]  DataT;
    reg [9:0]  DataR;
    reg [9:0] ChannelInput;
    wire [9:0] EncodedData;
    wire [9:0] ChannelOutput;
    TXEncoder TXEncoder_inst(EncodedData , DataT);
    Channel Chanel_inst(ChannelOutput , ChannelInput);
    RXDecode RXDecoder_inst(DataR);
    integer i;
    initial begin
        for (i = 0; i < 10 ; i = i + 1 ) begin
            DataT = $random % 9000000 + 10000000 ; 
            #5 ChannelInput = EncodedData;
            #5 DataR = ChannelOutput;
        end
    end
    initial
        #105 $finish;
endmodule