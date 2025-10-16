module tflipflop (
    input T,       // Toggle input
    input clk,     // Clock signal
    input reset,   // Asynchronous reset
    output reg Q   // Output
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;             // Reset output to 0
        else if (T)
            Q <= ~Q;               // Toggle output
        else
            Q <= Q;                // Hold state
    end
endmodule
