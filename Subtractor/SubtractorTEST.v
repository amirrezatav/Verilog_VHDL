module SubtractorTest ();
    reg clk;
    reg[0:3] in1;
    reg[0:3] in2;
    reg BorrowIn;
    wire[0:3] Out;
    wire BorrowOut;
    integer i;
    Subtractor Subtractor_init(clk , in1 , in2 , BorrowIn , Out , BorrowOut);
    initial 
        $monitor($time," clk = %b , in1 = %b , in2 = %b , BorrowIn = %b , Out = %b , BorrowOut = %b",clk , in1 , in2 , BorrowIn , Out , BorrowOut);
initial begin
    clk = 1'b0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
        in1 <= $random % 9000 + 1000;
        in2 <= $random % 9000 + 1000;
        BorrowIn <= 0;
    for (i = 0;i < 20 ; i = i +1 ) begin
        #20
        in1 <= $random % 9000 + 1000;
        in2 <= $random % 9000 + 1000;
        BorrowIn <= $random % 2;
    end
end
endmodule
