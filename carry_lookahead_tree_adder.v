// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Tue Nov 05 17:58:42 2019"

module carry_lookahead_tree_adder(
	a,
	b,
	s
);


input wire	[7:0] a;
input wire	[7:0] b;
output wire	[7:0] s;

wire	[1:0] gp1co;
wire	[1:0] gp1g;
wire	[1:0] gp1p;
wire	[1:0] gp2co;
wire	[1:0] gp2g;
wire	[1:0] gp2p;
wire	[1:0] gp3co;
wire	[1:0] gp3g;
wire	[1:0] gp3p;
wire	[1:0] gp4co;
wire	[1:0] gp4g;
wire	[1:0] gp4p;
wire	[1:0] gp5co;
wire	[1:0] gp5g;
wire	[1:0] gp5p;
wire	[1:0] gp6co;
wire	[1:0] gp6g;
wire	[1:0] gp6p;
wire	[1:0] gp7co;
wire	[1:0] gp7g;
wire	[1:0] gp7p;
wire	[7:0] s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 0;




add	b2v_add1(
	.a(a[0]),
	.b(b[0]),
	.c(gp1co[0]),
	.g(gp1g[0]),
	.p(gp1p[0]),
	.s(s_ALTERA_SYNTHESIZED[0]));


add	b2v_add2(
	.a(a[1]),
	.b(b[1]),
	.c(gp1co[1]),
	.g(gp1g[1]),
	.p(gp1p[1]),
	.s(s_ALTERA_SYNTHESIZED[1]));


add	b2v_add3(
	.a(a[2]),
	.b(b[2]),
	.c(gp2co[0]),
	.g(gp2g[0]),
	.p(gp2p[0]),
	.s(s_ALTERA_SYNTHESIZED[2]));


add	b2v_add4(
	.a(a[3]),
	.b(b[3]),
	.c(gp2co[1]),
	.g(gp2g[1]),
	.p(gp2p[1]),
	.s(s_ALTERA_SYNTHESIZED[3]));


add	b2v_add5(
	.a(a[4]),
	.b(b[4]),
	.c(gp3co[0]),
	.g(gp3g[0]),
	.p(gp3p[0]),
	.s(s_ALTERA_SYNTHESIZED[4]));


add	b2v_add6(
	.a(a[5]),
	.b(b[5]),
	.c(gp3co[1]),
	.g(gp3g[1]),
	.p(gp3p[1]),
	.s(s_ALTERA_SYNTHESIZED[5]));


add	b2v_add7(
	.a(a[6]),
	.b(b[6]),
	.c(gp4co[0]),
	.g(gp4g[0]),
	.p(gp4p[0]),
	.s(s_ALTERA_SYNTHESIZED[6]));


add	b2v_add8(
	.a(a[7]),
	.b(b[7]),
	.c(gp4co[1]),
	.g(gp4g[1]),
	.p(gp4p[1]),
	.s(s_ALTERA_SYNTHESIZED[7]));


gp	b2v_gp1(
	.ci(gp5co[0]),
	.g(gp1g),
	.p(gp1p),
	.go(gp5g[0]),
	.po(gp5p[0]),
	.co(gp1co));


gp	b2v_gp2(
	.ci(gp5co[1]),
	.g(gp2g),
	.p(gp2p),
	.go(gp5g[1]),
	.po(gp5p[1]),
	.co(gp2co));


gp	b2v_gp3(
	.ci(gp6co[0]),
	.g(gp3g),
	.p(gp3p),
	.go(gp6g[0]),
	.po(gp6p[0]),
	.co(gp3co));


gp	b2v_gp4(
	.ci(gp6co[1]),
	.g(gp4g),
	.p(gp4p),
	.go(gp6g[1]),
	.po(gp6p[1]),
	.co(gp4co));


gp	b2v_gp5(
	.ci(gp7co[0]),
	.g(gp5g),
	.p(gp5p),
	.go(gp7g[0]),
	.po(gp7p[0]),
	.co(gp5co));


gp	b2v_gp6(
	.ci(gp7co[1]),
	.g(gp6g),
	.p(gp6p),
	.go(gp7g[1]),
	.po(gp7p[1]),
	.co(gp6co));


gp	b2v_gp7(
	.ci(SYNTHESIZED_WIRE_0),
	.g(gp7g),
	.p(gp7p),
	
	
	.co(gp7co));


assign	s = s_ALTERA_SYNTHESIZED;

endmodule
