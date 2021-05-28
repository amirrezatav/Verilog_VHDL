library verilog;
use verilog.vl_types.all;
entity Subtractor is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(0 to 3);
        in2             : in     vl_logic_vector(0 to 3);
        BorrowIn        : in     vl_logic;
        \Out\           : out    vl_logic_vector(0 to 3);
        BorrowOut       : out    vl_logic
    );
end Subtractor;
