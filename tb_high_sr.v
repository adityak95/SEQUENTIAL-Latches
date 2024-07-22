`include"High_srlatch.v"
module tb;
reg s,r;
wire q,qbar;
high_sr dut(.*);

initial begin
repeat(5)begin 
s=1;r=1;#5;
s=0;r=1;#5;
s=1;r=0;#5;
s=0;r=0;#5;
end
end
initial $monitor($time,"\ts=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
endmodule

