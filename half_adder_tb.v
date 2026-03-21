module half_adder_tb;

reg A,B;
wire sum ,carry;

half_adder uut (.A(A),.B(B),.sum(sum),.carry(carry));

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);

    #1 A=0;B=0;
    #1 A=0;B=1;
    #1 A=1;B=0;
    #1 A=1;B=1;
end
endmodule