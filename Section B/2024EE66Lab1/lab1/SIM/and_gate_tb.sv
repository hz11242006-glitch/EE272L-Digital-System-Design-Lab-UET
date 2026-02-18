module lab1(
    input  logic a,
    input  logic b,
   
    output logic y
);

    assign y = (a & b) ;

endmodule

module lab1_tb;

   
    logic a1, b1;
    logic y1;


    localparam period = 10;

    lab1 UUT (
        .a(a1),
        .b(b1),
        .y(y1)
    );

  
    initial begin
        
        a1 = 0; b1 = 0; 
        #period;

        a1 = 0; b1 = 0; 
        #period;

        a1 = 0; b1 = 1; 
        #period;

        a1 = 0; b1 = 1;
        #period;

        a1 = 1; b1 = 0; 
        #period;

        a1 = 1; b1 = 0; 
        #period;

        a1 = 1; b1 = 1; 
        #period;

        a1 = 1; b1 = 1; 
        #period;

        $stop;
    end

    // Monitor block
    initial begin
        $monitor("Time=%0t | y=%b a=%b b=%b ",
                 $time, y1, a1, b1);
    end

endmodule
