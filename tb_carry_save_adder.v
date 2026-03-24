`timescale 1ns/1ps

module tb_carry_save_adder;

reg [3:0] A;
reg [3:0] B;
reg [3:0] C;

wire [3:0] Sum;
wire [3:0] Carry;

carry_save_adder uut (
.A(A),
.B(B),
.C(C),
.Sum(Sum),
.Carry(Carry)
);

initial begin

$dumpfile("csa.vcd");
$dumpvars(0,tb_carry_save_adder);

A=4'b0001; B=4'b0010; C=4'b0011;
#10;

A=4'b0101; B=4'b0011; C=4'b0001;
#10;

A=4'b1111; B=4'b0001; C=4'b0010;
#10;

A=4'b1010; B=4'b0101; C=4'b0011;
#10;

$finish;

end

endmodule