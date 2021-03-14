module ring_counter_test;
reg clock , reset;
wire [3:0] count;

initial begin
    clock = 1'b0;
    forever begin
        #50 clock = ~ clock;
    end
end

initial begin
    reset = 1'b1;
    #200 reset = 1'b0;
    #1600 $stop;
end 

initial begin
    $monitor ($time , " clock = %d , \t reset = %d , \t count = %b  " , clock , reset , count);
end 
ring_counter dut(clock , reset , count);

endmodule