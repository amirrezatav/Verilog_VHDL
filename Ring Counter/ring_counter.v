module ring_counter (
    clock,
    reset,
    count,
    mode, // 1 right counting , 0 left counting
    load
);
    input clock , reset , mode;
    input  [3:0] load;
    output count;

    reg [3:0] count;

    always @(  clock or posedge reset) 
    begin
        if(reset)
        for (i = ; i < 4 ; i = i + 1 ) begin
            count[i] = load[i];
        end
            count = 4'b0001;
        else
            count = (mode) ? {cout[0], count[3:1]} : {cout[2:0] , count[3]};
    end
endmodule
