// Testbench for 2-Input AND Gate
// Description: Applies all possible input combinations
//              and monitors output response


`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

module and_gate_tb;

    // Testbench signals
    logic a1;   // Test input A
    logic b1;   // Test input B
    logic y1;   // Observed output

    // Define delay between test cases
    localparam period = 10;

    
    // Instantiate DUT (Device Under Test)
    
    and_gate UUT (
        .A(a1),   // Connect test signal a1 to DUT input A
        .B(b1),   // Connect test signal b1 to DUT input B
        .Y(y1)    // Connect DUT output Y to test signal y1
    );

    
    // Stimulus Block
    // Applies all possible combinations of inputs
    
    initial begin

        // Case 1: A=0, B=0
        a1 = 0; 
        b1 = 0;
        #period;

        // Case 2: A=0, B=1
        a1 = 0; 
        b1 = 1;
        #period;

        // Case 3: A=1, B=0
        a1 = 1; 
        b1 = 0;
        #period;

        // Case 4: A=1, B=1
        a1 = 1; 
        b1 = 1;
        #period;

        // Stop simulation
        $stop;

    end
    
    // Automatically prints values whenever they change
    
    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Y=%b",
                  $time, a1, b1, y1);
    end

endmodule
