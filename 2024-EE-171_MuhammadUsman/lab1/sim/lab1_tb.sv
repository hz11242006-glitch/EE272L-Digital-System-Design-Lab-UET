module and_gate_tb;
    logic a1, b1, y1;
    
    localparam period = 10;
    
    and_gate UUT(
        .A(a1),
        .B(b1),
        .Y(y1)
    );
    
    initial begin
        // Provide different combinations of the inputs to check validity
        a1 = 0; b1 = 0;
        #period;
        a1 = 0; b1 = 1;
        #period;
        a1 = 1; b1 = 0;
        #period;
        a1 = 1; b1 = 1;
        #period;
        $stop;
    end
    
    initial begin
        // The following system task will print out the signal values
        // every time they change in the Transcript Window
        $monitor("Y=%b, A=%b, B=%b", y1, a1, b1);
    end
endmodule