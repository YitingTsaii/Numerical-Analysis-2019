function z=Lambda(x,j)
length = size(x,2);
y = 1;
for i = 1:length
    if i ~= j
        y = y*(x(j) - x(i));
    end
end
z=1/y;
