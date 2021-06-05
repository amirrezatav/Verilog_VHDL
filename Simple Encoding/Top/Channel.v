module Channel(
    output reg [9:0] dout,
    input wire [9:0] din);

    reg IsNose = 1'b0;

    always @(din) begin
        #1
        if(IsNose) begin
            dout = Nose(din);   
            IsNose = 1'b0;
        end else begin
            dout = din;  
            IsNose = 1'b1; 
        end
    end

    function [0:9] Nose(input [0:9] DataTransfer);
        reg [0:6] tmp;
        begin
            tmp = $random % 9000000 + 10000000 ;  // din in the range 10000000 to 9999999
            Nose = {DataTransfer[0:2] , tmp};
        end
    endfunction

endmodule