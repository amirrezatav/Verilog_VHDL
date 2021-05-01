// Arithmetic operators
module ArithTest();
reg [3:0] a ;
reg [3:0] b;
initial begin
    a = 4'b1100;
    b = 4'b0011;
    $display("a+b = ", a+b);
    $display("a-b = ", a-b);
    $display("a/b = ", a/b);
    $display("a*b = ", a*b);
    $display("a%%b = ", a%b);
end
endmodule
