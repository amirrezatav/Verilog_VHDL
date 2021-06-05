module RXDecode(Din);
    input [9:0] Din;
    reg correct;
    always @(Din)
    begin
        correct = myfunc(Din);
        $display("Received value: %b Data: %b checksum: %b Status: %s\n\n\n\n", Din, Din[6:0], Din[9:7],(correct)? ("OK") :("Error") );    
    end
    function myfunc;
        input [9:0] Din;
        reg [2:0] temp;
        integer i;
        begin
        temp = 3'b000;
        for (i = 0; i < 6 ; i=i+1)
            temp = temp + Din[i];
        temp = temp ^ 3'b111;
        if ( temp == Din[9:7])
            myfunc = 1'b1;
        else
            myfunc = 1'b0;
        end
    endfunction
endmodule