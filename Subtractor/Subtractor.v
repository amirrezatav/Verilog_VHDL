module Subtractor (
    input clk,
    input wire[0:3] in1,
    input wire[0:3] in2,
    input wire BorrowIn,
    output reg[0:3] Out,
    output reg BorrowOut
);
reg TempBorrow;
    always @(posedge clk) begin
        TempBorrow = BorrowIn;

        Out[3] = in1[3]^ in2[3] ^ TempBorrow;
        TempBorrow =~in1[3] & (in2[3]^TempBorrow) | in2[3] & TempBorrow;

        Out[2] = in1[2]^ in2[2] ^ TempBorrow;
        TempBorrow =~in1[2] & (in2[2]^TempBorrow) | in2[2] & TempBorrow;

        Out[1] = in1[1]^ in2[1] ^ TempBorrow;
        TempBorrow =~in1[1] & (in2[1]^TempBorrow) | in2[1] & TempBorrow;
        
        Out[0] = (in1[0] ^ in2[0]) ^ TempBorrow;
        TempBorrow =~in1[0] & (in2[0]^TempBorrow) | in2[0] & TempBorrow;

        BorrowOut = TempBorrow;
        
    end
endmodule
