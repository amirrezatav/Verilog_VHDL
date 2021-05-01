module replicTest();
reg a ;
reg [1:0] b ;
reg [5:0] c ;
initial begin
    a = 1'b1;
    b = 2'b00;
    $display("4{a} = %b",{4{a}});
    c = {4{a}};
    $display("c = %b", c);
end
endmodule