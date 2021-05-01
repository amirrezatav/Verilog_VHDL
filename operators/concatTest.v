// Miscellaneous operators
module concatTest();
reg a ;
reg [1:0] b ;
reg [5:0] c ;
initial begin
    a = 1'b1;
    b = 2'b00;
    c = 6'b101001;
    $display("{a, b} = ", {a, b});
    $display("{c[5:3],a} = ", {c[5:3],a});
end
endmodule
