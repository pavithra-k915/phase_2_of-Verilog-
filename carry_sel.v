module carry_sel (
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0]Sum,
    output Cout
);
    wire [3:0]sum0,sum1;
    wire c0,c1;

    assign {c0,sum0}=A+B+1'b0;
    assign {c1,sum1}=A+B+1'b1;

    assign Sum=(Cin)?sum1:sum0;
    assign Cout=(Cin)?c1:c0;
    
endmodule