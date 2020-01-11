function x = F_value(D_2,D_1,y,a,b,c,alpha,beta)
length = size(y,1);
B = D_1(2:length+1,2:length+1);
A = D_2(2:length+1,2:length+1);
U = zeros(length);
for i = 1:length
    U(i,i)=y(i);
end
constant = a*D_2(2:length+1,1)*alpha+a*D_2(2:length+1,length+2)*beta+b*D_1(2:length+1,1)*alpha+b*D_1(2:length+1,length+2)*beta;
x = a*A*y + b*U*B*y + c*y + constant;