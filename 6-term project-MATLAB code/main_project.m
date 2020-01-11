format long;

a = 1;
b = 0;
c = 1;
alpha = cos(1);
beta = cos(1);

for i = 1:15
    fprintf('%d\n',i)
    initial = rand(i,1);
    x=linspace(-1,1,i+2);
    D_2=Second_Order_differential_matrix(x);
    D_1=First_Order_differential_matrix(x);
    lambda = 1;
    J = Jacobian(D_2,D_1,initial,a,b,c);
    F_initial = F_value(D_2,D_1,initial,a,b,c,alpha,beta);
    q = lambda*inv(J)*F_initial;
    next = initial - q;
    while 1
        F_next = F_value(D_2,D_1,next,a,b,c,alpha,beta);
        if norm(F_next) < 10^(-8)
            break
        end
        
            initial = next;
            J = Jacobian(D_2,D_1,initial,a,b,c);
            F_initial = F_value(D_2,D_1,initial,a,b,c,alpha,beta);
            q = lambda*inv(J)*F_initial;
            next = initial - q;
        
    end
    next=[[alpha];next;[beta]]
    plot(x,next)
end





