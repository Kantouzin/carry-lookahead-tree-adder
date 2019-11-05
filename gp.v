module gp (
  input wire [1:0] g,
  input wire [1:0] p,
  input wire ci,
  output wire go, po,
  output wire [1:0] co );

  assign co[0] = ci;
  assign co[1] = g[0] | p[0] & ci;
  assign go = g[1] | p[1] & g[0];
  assign po = p[1] & p[1];
endmodule
