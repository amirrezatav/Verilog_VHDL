module code4a (y, a, en);
    output [3:0] y;
    input [1:0] a;
    input en;
    reg [3:0] y;
    always @(a or en) begin
        y = 4'h0;
        case ({en,a}) // synopsys full_case
        3'b100: y[a] = 1'b1;
        3'b101: y[a] = 1'b1;
        3'b110: y[a] = 1'b1;
        3'b111: y[a] = 1'b1;
        endcase
end
endmodule
