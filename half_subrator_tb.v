module half_subrator_tb;

reg A,B;
wire D ,Bout;

half_subrator uut (.A(A),.B(B),.D(D),.Bout(Bout));

initial begin
    $dumpfile("half_subrator.vcd");
    $dumpvars(0,half_subrator_tb);

    #1 A=0;B=0;
    #1 A=0;B=1;
    #1 A=1;B=0;
    #1 A=1;B=1;

    #1 $finish;
end
endmodule