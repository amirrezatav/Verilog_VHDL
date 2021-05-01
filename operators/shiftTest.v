module shiftTest();
reg [3:0] a ;
initial begin
    a = 4'b1010;
    $display("a << 1 : %b", a << 1);
    $display("a >> 2 : %b", a >> 2);
    $display("$signed(a) <<< 3 : %b" , $signed(a)<<<3);
    $display("a <<< 3 : %b", a <<<3);
    $display("$signed(a) >>> 2 : %b", $signed(a)>>>2);
    $display("a >>> 2 : %b", a >>> 2); 
end
endmodule