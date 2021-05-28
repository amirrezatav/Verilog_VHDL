module Top;
reg [0:1]select;
reg clk;
// AR 
reg [15:0] ARin;
wire [15:0]ArBusIn ;
reg ARclear;
reg ARload;
reg ARinc;
reg ARread;
wire [15:0] ARout;
reg [15:0] ArBusOut;

// PC
reg [11:0] PCin;
wire [11:0] PCBusIn;
reg PCclear;
reg PCload;
reg PCinc;
reg PCread;
wire[11:0] PCout;
reg[11:0] PcBusOut;

// DR 
reg [15:0] DRin;
wire [15:0] DrBusIn;
reg DRclear;
reg DRload;
reg DRinc;
reg DRread;
wire[15:0] DRout;
reg[15:0] DrBusOut;

// Init Register
AR AR_init(ARin , clk , ARclear , ARload  , ARinc , ARread , ARout);
DR DR_init(DRin , clk , DRclear , DRload , DRinc , DRread , DRout);
PC PC_init(PCin , clk , PCclear , PCload , PCinc , PCread , PCout);

// Init DATABUS
BUS bus_init(select ,ArBusOut,DrBusOut,PcBusOut , ArBusIn , DrBusIn ,PCBusIn);

//Init Clock
initial begin
    clk = 1'b0;
    forever begin
       #10 clk =!clk;
    end
end

initial begin
    #20
    ARSETTING();
    assign ArBusOut = ARout;
    #20
    select = 2'b00;
    #20
    select = 2'bzz;
    ARread = 0;
    #150
    DRSETTING();
    assign DrBusOut = DRout;
    #20
    select = 2'b01;
    #20
    select = 2'bzz;
    DRread = 0;
    #150
    PCSETTING();
    assign PcBusOut = PCout;
    #50
    select = 2'b10;
        #20
    select = 2'bzz;
    DRread = 0;
end

task ARSETTING();
begin
    #20
    $display("AR Set Up");
    ARread = 0;
    ARclear = 1;
    ARload = 0;
    ARinc = 0;
    #20
    ARclear = 0;
    #20
    ARload = 1;
    ARin = 16'h0001;
    #20
    ARload = 0;
    ARinc = 1;
    #40
    ARinc = 0;
    #20
    ARread = 1;
    
end
endtask

task DRSETTING();
    begin
    #20
    $display("DR Set Up" );
    DRread = 0;
    DRclear = 1;
    DRload = 0;
    DRinc = 0;
    #20
    DRclear = 0;
    #20
    DRload = 1;
    assign DRin = DrBusIn;
    #20
    DRload = 0;
    DRinc = 1;
    #40
    DRinc = 0;
    #20
    DRread = 1;
end
endtask


task PCSETTING();
    begin
    #20
    $display("PC Set Up" );
    PCread = 0;
    PCclear = 1;
    PCload = 0;
    PCinc = 0;
    #20
    PCclear = 0;
    #20
    PCload = 1;
    assign PCin = PCBusIn;
    #20
    PCload = 0;
    PCinc = 1;
    #60
    PCinc = 0;
    #20
    PCread = 1;
end
endtask


endmodule
