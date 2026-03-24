module tb_skip;

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

carry_skip_adder uut(A,B,Cin,Sum,Cout);

initial begin

$dumpfile("skip.vcd");
$dumpvars(0,tb_skip);

A=4'b0011; B=4'b0101; Cin=0;
#10;

A=4'b1111; B=4'b0001; Cin=0;
#10;

A=4'b1010; B=4'b0101; Cin=1;
#10;

$finish;

end
endmodule