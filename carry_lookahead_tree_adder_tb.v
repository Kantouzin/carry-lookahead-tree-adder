`timescale 1 ns / 1 ps

module carry_lookahead_tree_adder_tb;
  reg  [7:0] a;
  reg  [7:0] b;
  wire [7:0] s;

  carry_lookahead_tree_adder i1 (
    .a(a), .b(b), .s(s)
  );

  initial begin
    #0 a = 8'd0; b = 8'd0;
    #1 a = 8'd3; b = 8'd5;
    #1 a = 8'b10101011; b = 8'b00111001;
    #1 a = 8'b00001111; b = 8'b11110000;
    #1 $stop;
  end
endmodule
