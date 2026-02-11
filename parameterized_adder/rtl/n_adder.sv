// Code your design here
`timescale 1ns/1ps
module n_adder #(
  parameter int N = 4
)
  (
    input logic [N-1:0] a,
    input logic [N-1:0] b,
    input logic cin,
    output logic [N-1:0] sum,
    output logic cout
  );
  
  always_comb begin
    {cout,sum} = a + b + cin;
  end
endmodule
