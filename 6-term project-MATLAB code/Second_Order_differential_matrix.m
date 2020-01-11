function D_2 = Second_Order_differential_matrix(x)
n = size(x,2);
D_1=First_Order_differential_matrix(x);
D_2=zeros(n);
for i = 1:n
    for j = 1:n
        if i ~= j
            D_2(i,j)=2*D_1(i,j)*(D_1(i,i) - (1/(x(i)-x(j))));
        end
    end 
end

for i = 1:n
    for j = 1:n
        if i ~= j
            D_2(i,i)=D_2(i,i)-D_2(i,j);
        end
    end
end