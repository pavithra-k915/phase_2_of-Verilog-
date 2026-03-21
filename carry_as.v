module carry_as (
    input [3:0]A,
    input [3:0]B,
    input M,
    output [3:0]Sum,
    output Cout
);
    wire C1,C2,C3;
    wire [3:0]Bmod;
assign Bmod = B ^ {4{M}};

full_adder FA0(A[0], Bmod[0], M, Sum[0], C1);
full_adder FA1(A[1], Bmod[1], C1, Sum[1], C2);
full_adder FA2(A[2], Bmod[2], C2, Sum[2], C3);
full_adder FA3(A[3], Bmod[3], C3, Sum[3], Cout);

endmodule
