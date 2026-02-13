`timescale 1ns/1ps

module n_subtractor #(
    parameter int N = 4
)
(
    input  logic [N-1:0] a,
    input  logic [N-1:0] b,
    input  logic         bin,  // Borrow-in (usually 0)
    output logic [N-1:0] diff, // Difference
    output logic         bout  // Borrow-out
);
  
  always_comb begin
    {bout, diff} = a - b - bin;
  end

endmodule
