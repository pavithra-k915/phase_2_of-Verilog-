module carry_skip_adder(
input [3:0] A,
input [3:0] B,
input Cin,
output [3:0] Sum,
output Cout
);

wire [3:0] P;
wire [3:0] C;
wire block_prop;

assign P = A ^ B;

// Ripple carries
assign C[0] = Cin;
assign C[1] = (A[0]&B[0]) | (P[0]&C[0]);
assign C[2] = (A[1]&B[1]) | (P[1]&C[1]);
assign C[3] = (A[2]&B[2]) | (P[2]&C[2]);
wire ripple_cout = (A[3]&B[3]) | (P[3]&C[3]);

// Block propagate
assign block_prop = P[0] & P[1] & P[2] & P[3];

// Skip logic
assign Cout = block_prop ? Cin : ripple_cout;

// Sum
assign Sum = P ^ C;

endmodule