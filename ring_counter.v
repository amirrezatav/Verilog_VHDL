module ring_counter (
    clock,
    reset,
    count
);
    input clock , reset;
    output count;

    reg [3:0] count;

    always @(posedge clock or posedge reset) 
    begin
        if(reset)
            count = 4'b0001;
        else
            count = {cout[2:0] , count[3]};
    end
endmodule