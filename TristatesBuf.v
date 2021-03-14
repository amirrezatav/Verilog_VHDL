<<<<<<< HEAD
module TristatesBuf (
    out_,// Output (Active Low)
    outEnable, //Data Input
    dataInput//Output Enable
    ); 
    
    input dataInput, outEnable; 
    output out_; 
    reg out_; //Use for left hand side (LHS) of signals assigned inside in always blocks
    
    always @(dataInput or outEnable) 
    begin 
        if (outEnable)
        begin
          out_ = ~dataInput; 
        end else begin
          out_ = 1'bZ;
        end 
    end

endmodule 
=======
module TristatesBuf (
    out_,// Output (Active Low)
    outEnable, //Data Input
    dataInput//Output Enable
    ); 
    
    input dataInput, outEnable; 
    output out_; 
    reg out_; //Use for left hand side (LHS) of signals assigned inside in always blocks
    
    always @(dataInput or outEnable) 
    begin 
        if (outEnable)
        begin
          out_ = ~dataInput; 
        end else begin
          out_ = 1'bZ;
        end 
    end

endmodule 
>>>>>>> d260b665c9410f6adf18d3aab88b4595204d03b9
