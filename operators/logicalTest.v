// Logical operators
module logicalTest();
reg [3:0] a ;
reg [3:0] b;
reg [3:0] c;
initial begin
    a = 4;
    b = 7;
    c = 4'hx; 
    $display("a && b : ", a && b);
    $display("a || b : ", a || b);
    $display("!a : ", !a );
    $display("a || c : ", a || c);
    $display("!c :", !c);
end
endmodule
