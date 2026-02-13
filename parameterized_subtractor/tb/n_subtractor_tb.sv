`timescale 1ns/1ps

module n_subtractor_tb;
  localparam int N = 4;
  
  logic [N-1:0] a, b;
  logic bin;
  logic [N-1:0] diff;
  logic bout;
  
  n_subtractor #(.N(N)) dut1 (
    .a(a), 
    .b(b), 
    .bin(bin), 
    .diff(diff), 
    .bout(bout)
  );
  
  initial begin
    a = 4'h5; b = 4'h2; bin = 1'b0;
    #5;
    $display("a=%h  b=%h bin=%b ---> diff=%h bout=%b", a, b, bin, diff, bout);
    
    a = 4'hA; b = 4'hA; bin = 1'b0;
    #5;
    $display("a=%h  b=%h bin=%b ---> diff=%h bout=%b", a, b, bin, diff, bout);
    
    
    a = 4'h2; b = 4'h3; bin = 1'b0;
    #5;
    $display("a=%h  b=%h bin=%b ---> diff=%h bout=%b", a, b, bin, diff, bout);
    

    a = 4'h7; b = 4'h2; bin = 1'b1;
    #5;
    $display("a=%h  b=%h bin=%b ---> diff=%h bout=%b", a, b, bin, diff, bout);
    
    a = 4'h0; b = 4'hF; bin = 1'b0;
    #5;
    $display("a=%h  b=%h bin=%b ---> diff=%h bout=%b", a, b, bin, diff, bout);
    
    #5;
    $finish;
  end
endmodule
