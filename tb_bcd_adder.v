module tb_bcd_adder;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

bcd_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

$dumpfile("bcd_adder.vcd");
$dumpvars(0,tb_bcd_adder);

A=4'd3; B=4'd4; Cin=0; #10;
A=4'd5; B=4'd6; Cin=0; #10;
A=4'd7; B=4'd8; Cin=0; #10;
A=4'd9; B=4'd1; Cin=0; #10;

$finish;

end

endmodule