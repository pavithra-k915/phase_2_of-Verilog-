module bcd_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire [4:0] temp;
wire [4:0] corrected;
wire correction;

assign temp = A + B + Cin;

assign correction = (temp > 9);

assign corrected = correction ? temp + 6 : temp;

assign Sum = corrected[3:0];
assign Cout = corrected[4];

endmodule