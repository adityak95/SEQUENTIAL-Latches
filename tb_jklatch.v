`include"jklatch.v"
module tb;
reg j,k;
wire q,qbar;
jk dut(.*);

initial begin
//repeat(5)begin 
j=0;k=0;#15;
j=0;k=1;#15;
j=1;k=0;#15;
j=1;k=1;#15;
//end
end
initial #100 $finish();
initial $monitor($time,"\tj=%b,k=%b,q=%b,qbar=%b",j,k,q,qbar);
endmodule

