module AR(
    input wire [15:0] inreg,
    input clk,
    input clear,
    input load,
    input inc,
    input Read,
    output reg [15:0] outreg );
reg [15:0] temp ;
always @(posedge clk) begin
  
    if(clear)
        temp = 16'h0000;
    else if(load)
        temp = inreg;
    else if(inc)
        temp = temp + 1;
    else if(Read) begin
        outreg = temp;
    end
    if(!Read)
        outreg = 16'hzzzz;
end
endmodule