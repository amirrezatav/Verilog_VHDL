module code5a (y, z, a, b, c, d);
    output y, z;
    input a, b, c, d;
    reg y, z;
    always @(a or b or c or d) begin
        {y, z} = 2'b0;
        casez ({a, b, c, d}) // synopsys parallel_case
        4'b11??: z = 1;
        4'b??11: y = 1;
        endcase
    end
endmodule
