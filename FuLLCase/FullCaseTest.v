//-----------------------------------------------------
// Design Name : FullCase
// File Name   : FullCaseTest.v
// Function    : FullCaseTest
// Coder       : Amirreza Tavakoli
//-----------------------------------------------------
module FullCaseTest ();
    wire [3:0] y;
    reg [1:0] a;
    reg en;
    initial begin
        {en,a} =  3'b000;
        #5 {en,a} =  3'b001;
        #5 {en,a} =  3'b010;
        #5 {en,a} =  3'b011;
        #5 {en,a} =  3'b100;
        #5 {en,a} =  3'b101;
        #5 {en,a} =  3'b110;
        #5 {en,a} =  3'b111;

    end
    initial
        $monitor("y= %b,  \ten = %b  ,\ta = %b", y, en , a);
code4a init(y, a, en);   
endmodule
