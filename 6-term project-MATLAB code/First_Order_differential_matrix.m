function D_1=First_Order_differential_matrix(x)
n=size(x,2);
D_1=zeros(n);
for i = 1:n
    for j = 1:n
        if i ~= j
            D_1(i,j)=Lambda(x,j)/(Lambda(x,i)*(x(i)-x(j)));
        end
    end
end

for i = 1:n
    for j = 1:n
        if i ~=j
            D_1(i,i)=D_1(i,i)-D_1(i,j);
        end
    end
end
