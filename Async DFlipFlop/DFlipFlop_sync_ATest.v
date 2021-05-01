module DFlipFlop_Async_Test();
reg clock, reset , preset , D;
wire  Q , _Q;

initial begin
    clock = 1'b0;
	forever 
		#10 clock = ~clock;
end

initial begin
	reset = 1'b1;
		#200 reset = ~reset;
		#200 reset = ~reset;
end

initial begin
	preset = 1'b1;
	#300 preset = ~preset;
	#200 preset = ~preset;

end

initial begin
	D = 1'b0;
	forever
		#20 D = ~D;
end

initial 
begin
	$monitor($time, "clock = %d,  \treset = %d, \tpreset = %d, \tD = %b, \tQ= %d, \t_Q = %b", clock, reset, preset, D, Q, _Q);
end

DFlipFlop_Async inst(D , clock , reset , preset , Q , _Q);

endmodule