module TXEncoder(
    output reg [9:0] dout ,
    input  [6:0]  din);
    always @(din) begin
        dout = DataGenrator(din);
        $display("Data: %b \tEncoded Data: %b", din , dout);        
    end
function [9:0] DataGenrator (input [6:0] Datain);
    integer i ;
    reg[2:0] temp ;
    begin
         temp = 3'b000;
        for (i = 0; i < 7 ; i = i + 1) 
            temp = temp + Datain[i];
        temp = temp ^ 3'b111;
        DataGenrator ={temp , Datain} ;
    end
endfunction
endmodule