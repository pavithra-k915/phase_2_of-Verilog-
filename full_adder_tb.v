module full_adder_tb;
 reg A,B,Cin;
 wire sum,Cout;

 full_adder uut(.A(A),.B(B),.Cin(Cin),.sum(sum),.Cout(Cout));

 initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);

    A=0;B=0;Cin=0;
    #1 A=0;B=0;Cin=1; 
    #1 A=0;B=1;Cin=0; 
    #1 A=0;B=1;Cin=1; 
    #1 A=1;B=0;Cin=0; 
    #1 A=1;B=0;Cin=1; 
    #1 A=1;B=1;Cin=0; 
    #1 A=1;B=1;Cin=1; 
    #1 $finish;
 end
    
endmodule