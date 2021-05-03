//-----------------------------------------------------
// Design Name : CaseX
// File Name   : CaseXTest.v
// Function    : CaseXTest
// Coder       : Amirreza Tavakoli
//-----------------------------------------------------
module CaseXTest ();
    wire memce0, memce1, cs;
    reg en;
    reg [31:30] addr;
    initial begin
        en = 0; addr = 2'b00;
        #5 en = 1'b0; addr = 2'b11;
        #5 en = 1'b0; addr = 2'bxx;
        #5 en = 1'b0; addr = 2'bzz;
        #5 en = 1'b0; addr = 2'bx1;
        #5 en = 1'b0; addr = 2'b1z;
        #5 en = 1'b1; addr = 2'b11;
        #5 en = 1'b1; addr = 2'bxx;
        #5 en = 1'b1; addr = 2'bzz;
        #5 en = 1'b1; addr = 2'bx1;
        #5 en = 1'b1; addr = 2'b1z;
        #5 en = 1'b1; addr = 2'b00;
        #5 en = 1'b1; addr = 2'b01;
        #5 en = 1'b1; addr = 2'b10;
        #5 en = 1'bz; addr = 2'b11;
        #5 en = 1'bz; addr = 2'bxx;
        #5 en = 1'bz; addr = 2'bzz;
        #5 en = 1'bz; addr = 2'bx1;
        #5 en = 1'bz; addr = 2'b1z;
        #5 en = 1'bz; addr = 2'b00;
        #5 en = 1'bz; addr = 2'b10;
        #5 en = 1'bz; addr = 2'b01;
        #5 en = 1'bx; addr = 2'b11;
        #5 en = 1'bx; addr = 2'bxx;
        #5 en = 1'bx; addr = 2'bzz;
        #5 en = 1'bx; addr = 2'bx1;
        #5 en = 1'bx; addr = 2'b1z;
        #5 en = 1'bx; addr = 2'b00;
        #5 en = 1'bx; addr = 2'b10;
        #5 en = 1'bx; addr = 2'b01;

    end
    initial
        $monitor("memce0 = %b, \tmemce1 = %b, \tcs = %b, \taddr = %b, \ten = %b ",memce0, memce1, cs, addr , en);
code6 init(memce0, memce1, cs, en, addr);   
endmodule
