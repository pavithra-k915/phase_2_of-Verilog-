module full_subractor_tb;
 reg A,B,Bin;
 wire D,Bout;

 full_subractor uut(.A(A),.B(B),.Bin(Bin),.D(D),.Bout( Bout));

 initial begin
    $dumpfile("full_subractor.vcd");
    $dumpvars(0,full_subractor_tb);

    A=0;B=0;Bin=0;
    #1 A=0;B=0;Bin=1; 
    #1 A=0;B=1;Bin=0; 
    #1 A=0;B=1;Bin=1; 
    #1 A=1;B=0;Bin=0; 
    #1 A=1;B=0;Bin=1; 
    #1 A=1;B=1;Bin=0; 
    #1 A=1;B=1;Bin=1; 
    #1 $finish;
 end
    
endmodule
