// Bitwise operators
module bitTest();
reg [3:0] a ;
reg [3:0] b;
reg [3:0] c;
initial begin
    a = 4'b1100;
    b = 4'b0011;
    c = 4'b0101;
    $display("~a = ", ~a);
    $display("a & c = ", a & c);
    $display("a | b = ", a | b);
    $display("a ^ c = ", a ^ c);
    $display("a ~^ c = ", a~^c);
end
endmodule
