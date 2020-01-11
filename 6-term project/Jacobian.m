function x=Jacobian(D_2,D_1,y,a,b,c)
length = size(y,1);
U = zeros(length);
C = zeros(length);
B = D_1(2:length+1,2:length+1);
A = D_2(2:length+1,2:length+1);
for i = 1:length
    U(i,i)=y(i);
    C(i,i)=B(i,:)*y;
end
x = a*A+b*(C+U*B)+c*eye(length);
