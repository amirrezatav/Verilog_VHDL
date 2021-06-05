module HmamingEncoder(
       output reg[10:0] dout,
    input wire[6:0] din
);
always @(din) begin
    dout = MakeOddPatiryBit(din);
    $display ("din : %b , dout : %b , redundant bit = %b" , din , dout , {dout[7],dout[3],dout[1],dout[0]});
end
function [10:0]MakeOddPatiryBit(input [6:0] data);
    reg R8;
    reg R4;
    reg R2;
    reg R1;
    reg[10:0] tmp;
    begin
    tmp = {data[6:4] , R8 , data[3:1] ,R4 , data[0] , R2 , R1 };
    R1 = tmp[10] ^ tmp[8] ^ tmp[6] ^ tmp[4] ^ tmp[2] ;
    R2 = tmp[10] ^ tmp[9] ^ tmp[6] ^ tmp[5] ^ tmp[2] ;
    R4 = tmp[6] ^ tmp[5] ^ tmp[4];
    R8 = tmp[10] ^ tmp[9] ^ tmp[8];
    MakeOddPatiryBit = {data[6:4] , R8 , data[3:1] ,R4 , data[0] , R2 , R1 };
    end
endfunction
endmodule