module add (
  input  wire a, b, c,
  output wire g, p, s );

  assign s = a ^ b ^ c;
  assign g = a & b;
  assign p = a | b;
endmodule
