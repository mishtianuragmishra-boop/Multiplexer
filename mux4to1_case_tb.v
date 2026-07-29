module mux4to1_tb;
reg in0,in1,in2,in3;
reg [1:0] sel;
wire out;

mux4to1_tb uut(
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .out(out)
);
initial begin 
   in0=0;
   in1=1;
   in2=0;
   in3=1;
$display("SEL   | OUT");
$display("------------");

sel = 2'b00; #10;
$display("%b    | %b", sel, out);

sel = 2'b01; #10;
$display("%b    | %b", sel, out);

sel = 2'b10; #10;
$display("%b    | %b", sel, out);

sel = 2'b11; #10;
$display("%b    | %b", sel, out);

$finish;
end
endmodule
