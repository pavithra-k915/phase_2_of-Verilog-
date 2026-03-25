module fsm_traffic(
    input clk,
    input reset,
    output reg [1:0] state
);

parameter RED = 2'b00;
parameter GREEN = 2'b01;
parameter YELLOW = 2'b10;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= RED;
    else
    begin
        case(state)
            RED: state <= GREEN;
            GREEN: state <= YELLOW;
            YELLOW: state <= RED;
            default: state <= RED;
        endcase
    end
end

endmodule