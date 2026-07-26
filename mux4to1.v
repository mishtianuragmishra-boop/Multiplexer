module mux4to1(
    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel,
    output reg out);
always @(*) begin
    if (sel == 0) begin
        out = in0;
    end
    else if (sel==2'b01)
        out=in1;
    else if (sel==2'b10)
        out=in2;
    else
        out = in3;
end
endmodule
