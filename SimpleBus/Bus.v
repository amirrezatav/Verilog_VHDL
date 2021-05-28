module BUS(input[0:1] sel ,
            input wire [15:0] ARout , 
            input wire [15:0] DRout ,
            input wire [11:0] PCout ,
            output reg [15:0] ARin,
            output reg [15:0] DRin ,
            output reg [11:0] PCin);
reg [15:0] BusData;
initial begin
    $monitor("BusData = %b" , BusData);
end
always @(sel) begin
case (sel)
    0 : begin
        $display("Select AR" );
        assign BusData = ARout;
    end
     1 : begin
        $display("Select DR");
        assign BusData = DRout;
        end
    2 : begin
        $display("Select PC");
        assign BusData = PCout;
        end
endcase      
    DRin <= BusData;
    ARin <= BusData;
    PCin <= BusData[11:0];
end
endmodule