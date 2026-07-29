module mux2to1_tb;
reg in0,in1,sel;
wire out;
mux2to1 uut(
  .in0(in0),
  .in1(in1),
  .sel(sel),
  .out(out)
);
initial begin
   $display("SEL  IN0  IN1  |  OUT");
    $display("----------------------");

    sel = 0; in0 = 0; in1 = 0; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 0; in0 = 0; in1 = 1; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 0; in0 = 1; in1 = 0; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 0; in0 = 1; in1 = 1; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 1; in0 = 0; in1 = 0; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 1; in0 = 0; in1 = 1; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 1; in0 = 1; in1 = 0; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);

    sel = 1; in0 = 1; in1 = 1; #10;
    $display("%b    %b    %b   |   %b", sel, in0, in1, out);
    $finish;
end
endmodule

