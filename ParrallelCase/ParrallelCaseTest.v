module ParrallelCaseTest ();
    wire y, z;
    reg a, b, c, d;
    reg[0:3] count;
    initial begin
        count = 4'b0000;   
        {a, b, c, d} = 4'b0000;    
        while ({a, b, c, d} != 4'b1111) begin
            #5 {a, b, c, d} =  {a, b, c, d} + 1;
        end
    end
    initial
        $monitor("y = %b, \tz= %b, \t a= %b, \t b= %b, \t c= %b, \t d = %b", y, z, a, b, c, d);
code5a init(y, z, a, b, c, d);   
endmodule
