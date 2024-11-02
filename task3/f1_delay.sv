module f1_delay #(
    parameter WIDTH = 8
)(
    input  logic clk,
    input  logic rst,
    input  logic en,
    input  logic [WIDTH-1:0] N,
    output logic [WIDTH-1:0] data_out
);
    logic tick;

f1_fsm f1_fsm(
    .clk (clk),
    .rst (rst),
    .en (tick),
    .data_out (data_out)
);

clktick onesectick(
    .clk (clk),
    .rst (rst),
    .en (en),
    .N (N),
    .tick (tick)
);

endmodule
