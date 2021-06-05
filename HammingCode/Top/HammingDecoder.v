module HammingDecoder(
    input wire [10:0] din
    );
always @(din) begin
        $display("Received value: %b , Data : %b ,checksum: %b ,Status: %s\n\n\n\n", 
        din,{din[10:8],din[6:4],din[2]},{din[7],din[3],din[1],din[0]} , (ChackParity(din) == 1)? ("OK") :("Error"));        
end
function ChackParity(input [10:0] data);
    reg R8;
    reg R4;
    reg R2;
    reg R1;
    begin
    R1 = data[10] ^ data[8] ^ data[6] ^ data[4] ^ data[2] ;
    R2 = data[10] ^ data[9] ^ data[6] ^ data[5] ^ data[2] ;
    R4 = data[6] ^ data[5] ^ data[4];
    R8 = data[10] ^ data[9] ^ data[8];
    if({data[7],data[3],data[1],data[0]} == {R8,R4,R2,R1})
    ChackParity = 1'b1;
    else
    ChackParity = 1'b0;
    end
endfunction
endmodule

