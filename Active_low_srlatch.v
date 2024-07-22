module low_sr(s,r,q,qbar);
input s,r;
output reg q,qbar;

always@(*)begin 
	if(s==0 && r==0)begin q<=1'bx; qbar<=1'bx; end
	else if (s==0 && r==1)begin q<=1'b1; qbar<=1'b0; end
	else if (s==1 && r==0)begin q<=1'b0; qbar<=1'b1; end
	else begin q<=q; qbar=qbar; end
end
endmodule
