module Rigester(
    input wire clk,
    input wire[0:3] sel,
    input wire[0:3] PIn,
    input wire SIn,
    output reg[0:3] POut,
    output reg SOut
);
reg [0:3] temp;
always @(posedge clk ) begin
   case (sel)
       0 : begin // SISO
            SOut = temp[3];
            temp[3] = temp[2];
            temp[2] = temp[1];
            temp[1] = temp[0];
            temp[0] = SIn;
       end
       1 : begin // SIPO
            POut = temp;
            temp[3] = temp[2];
            temp[2] = temp[1];
            temp[1] = temp[0];
            temp[0] = SIn;
       end
       2 : begin // PISO
            SOut=temp[3];
            temp = PIn;
       end
       3 : begin // PIPO
            POut = temp;
            temp = PIn;
       end
       4 : begin // OSC
            temp = ~temp;
       end
       5 : begin // TSC
            temp = (~temp)+1;
       end
       6 : begin // INC
            temp = temp+1;
       end
       7 : begin // DEC
            temp = temp-1;
       end
       8 : begin // CRSH
            temp[3] = temp[0];
            temp[2] = temp[3];
            temp[1] = temp[2];
            temp[0] = temp[1];
       end
       9 : begin // CLSH
            temp[3] = temp[2];
            temp[2] = temp[1];
            temp[1] = temp[0];
            temp[0] = temp[3];       
       end
       10 : begin // ARSH
            temp = temp>>>1;
       end
       11 : begin // ALSH
             temp = temp<<<1;
       end
       12 : begin // PO
             POut = temp;
       end
   endcase
end
endmodule