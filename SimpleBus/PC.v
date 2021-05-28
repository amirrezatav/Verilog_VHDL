module PC(
    input wire [11:0] inreg,
    input clk,
    input clear,
    input load,
    input inc,
    input Read,
    output reg [11:0] outreg );
reg [11:0] temp ;
always @(posedge clk) begin
    if(clear)
        temp = 12'h000;
    else if(load)
        temp = inreg;
    else if(inc)
        temp = temp + 1;
    else if(Read) begin
        outreg = temp;
    end

    if(!Read) begin
        outreg = 12'hzzz;
    end
end
endmodule