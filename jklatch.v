module jk(j,k,q,qbar);
input j,k;
output reg q,qbar;

always@(*)begin 
	if(j==0 && k==0)begin q<=q; qbar<=qbar; end
	else if (j==1 && k==0)begin q<=1'b1; qbar<=1'b0; end
	else if (j==0 && k==1)begin q<=1'b0; qbar<=1'b1; end
	else begin q<=~q; qbar<=~qbar; end
end
endmodule

