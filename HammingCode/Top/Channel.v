module Channel(
    output reg [10:0] dout,
    input wire [10:0] din);

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

    function [10:0] Nose(input [10:0] data);
    reg R8;
    reg R4;
    reg R2;
    reg R1;
    reg[6:0] tmp;
    begin
        tmp = $random % 1000000 + 999999 ;
        R8 = data[7] ;
        R4 = data[3];
        R2 = data[1];
        R1 = data[0];
        Nose = {tmp[6:4] , R8 , tmp[3:1] ,R4 , tmp[0] , R2 , R1 };
    end
    endfunction
endmodule