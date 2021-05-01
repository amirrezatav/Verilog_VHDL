// Equality operators
module equTest();
reg [3:0] a ;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
reg [3:0] e;
reg [3:0] f;
initial begin
    a = 4;
    b = 7;
    c = 4'b010;
    d = 4'bx10; 
    e = 4'bx101; 
    f = 4'bxx01; 
    $display("c : ", c );
    $display("d : ", d );
    $display("a == b : ", a == b);
    $display("c != d : ", c != d);
    $display("c != f : ", c != f);
    $display("d == e : ", d == e);
    $display("c !==d : ", c !==d);
end
endmodule
