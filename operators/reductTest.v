module reductTest();
reg [3:0] a ;
reg [3:0] b;
reg [3:0] c;
initial begin
    a = 4'b1111;
    b = 4'b0101;
    c = 4'b0011;
    $display("&a = ", &a);
    $display("~&c = ", ~&c);
    $display("|b = ", |b);
    $display("~|a = ", ~|a);
    $display("^b = ", ^b);
    $display("~^c = ", ~^c);
end
endmodule