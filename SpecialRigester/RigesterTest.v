module TOP();
    reg clk;
    reg [0:3] sel;
    reg [0:3] PIn;
    reg  SIn;
    wire [0:3] POut;
    wire SOut;
    parameter Delay = 10;
    Rigester reg_init(clk , sel , PIn ,SIn , POut , SOut );
    initial begin
        $monitor("clk = %b , sel = %b  , SIn = %b , PIn = %b , POut = %b, SOut = %b ",clk , sel , SIn ,PIn, POut , SOut);
    end
    initial begin
        clk = 1'b0;
        forever begin
           #10 clk = ~clk;
        end
    end
    initial begin
        #Delay
        sel = 2;
        PIn = 4'b1001;
        #Delay
        SIn = 1;
        #Delay
        sel = 0;
        #Delay
        SIn = 0;
        #Delay
        SIn = 0;
        #Delay
        SIn = 1;
        #Delay
        sel = 12;
        #Delay 
        sel = 5;
        #Delay #Delay
        sel = 12;
        #Delay  #Delay
        sel = 9;
        #Delay  #Delay  #Delay  #Delay
        sel = 12;
        #Delay  #Delay
        sel = 11;
        #Delay  #Delay  #Delay  #Delay
        sel = 12;
    end
endmodule