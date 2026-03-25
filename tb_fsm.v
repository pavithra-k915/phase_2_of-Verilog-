module tb_fsm;

reg clk;
reg reset;
wire [1:0] state;

fsm_traffic uut (
    .clk(clk),
    .reset(reset),
    .state(state)
);

always #5 clk = ~clk;

initial
begin
    $dumpfile("fsm.vcd");
    $dumpvars(0,tb_fsm);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100 $finish;
end

endmodule