function [one,x,MX,MXTRNS,iden,y,nrmal]=normal()
	a=load('data_set.txt');
	[r,c]=size(a);
	one=ones(r,1);
	x=a(:,1);
	MX=[one,x];
	MXTRNS=MX'
	prod=MXTRNS*MX;
	inv=pinv(prod);
	iden=prod*inv;
	y=a(:,2);
	nrmal=inv*MXTRNS*y;
endfunction
	