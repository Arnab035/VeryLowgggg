// always block implementation of 1-bit comparator

module eq1_always 
(
	input wire i0, i1,
	output reg eq  // eq assigned to be reg
);

reg p0, p1;

always @(i0, i1)
	begin
		p0 = ~i0 & ~i1;
		p1 = i0 & i1;
		eq = p0 | p1;
	end
endmodule

module eq2
(
	input wire[1:0] a,b,
	output wire aeqb
);

wire e0, e1 ;

eq1_always eq_bit0_unit ( .i0(a[0]), .i1(b[0]), .eq(e0) );

eq1_always eq_bit1_unit ( .i0(a[1]), .i1(b[1]), .eq(e1) );

assign aeqb = e0 & e1 ;
endmodule

	
	




