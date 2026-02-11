`timescale 1ns/1ps
module n_adder_tb;
  localparam int N = 4;
  
  logic [N-1:0] a,b;
  logic cin;
  logic [N-1:0] sum;
  logic cout;
  
  n_adder #(.N(N)) dut1 (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  
  
  initial begin
     a = 4'h0;
     b = 4'h0;
     cin = 1'b0;
    #5;
    $display(" a= %h  b=%h cin= %b  ---> sum =%h cout =%b", a, b, cin, sum, cout);
    
    a = 4'h2;
     b = 4'h3;
     cin = 1'b0;
    #5;
    $display(" a= %h  b=%h cin= %b  ---> sum =%h cout =%b", a, b, cin, sum, cout);
    
    a = 4'h7;
     b = 4'h8;
     cin = 1'b0;
    #5;
    $display(" a= %h  b=%h cin= %b  ---> sum =%h cout =%b", a, b, cin, sum, cout);
    
    a = 4'hF;
     b = 4'h1;
     cin = 1'b0;
    #5;
    $display(" a= %h  b=%h cin= %b  ---> sum =%h cout =%b", a, b, cin, sum, cout);
    
    a = 4'h5;
     b = 4'hC;
     cin = 1'b1;
    #5;
    $display(" a= %h  b=%h cin= %b  ---> sum =%h cout =%b", a, b, cin, sum, cout);
    
    #5;
    $finish;
  end
endmodule
    
