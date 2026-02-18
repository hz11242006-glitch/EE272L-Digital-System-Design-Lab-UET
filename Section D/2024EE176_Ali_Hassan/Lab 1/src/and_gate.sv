// 2-Input AND Gate
// Description: Performs logical AND operation
//              Y = A & B

module and_gate (

    input  logic A,   // First input
    input  logic B,   // Second input
    output logic Y    // Output of AND operation

);

    // Continuous assignment
    // Output is HIGH only when both inputs are HIGH
    assign Y = A & B;

endmodule
