library verilog;
use verilog.vl_types.all;
entity Rigester is
    port(
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(0 to 3);
        PIn             : in     vl_logic_vector(0 to 3);
        SIn             : in     vl_logic;
        POut            : out    vl_logic_vector(0 to 3);
        SOut            : out    vl_logic
    );
end Rigester;
