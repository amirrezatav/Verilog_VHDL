module relatTest();
reg [3:0] a ;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
initial begin
    a = 4'd2;
    b = 4'd5;
    c = 4'd2;
    d = 4'hx; // d => x (x is 4 bit)
    $display("a < b : ", a < b );
    $display("a > b : ", a > b);
    $display("a >= c : ", a >= c);
    $display("d <= a : ", d <= a);
end
endmodule