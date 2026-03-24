module carry_save_adder(
input [3:0] A,
input [3:0] B,
input [3:0] C,
output [3:0] Sum,
output [3:0] Carry
);

assign Sum = A ^ B ^ C;
assign Carry = (A & B) | (B & C) | (A & C);

endmodule