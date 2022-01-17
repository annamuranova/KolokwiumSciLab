M1=ones(10,10)*8-3*eye(10,10)
inv(M1), det(M1)

v=%e.^[0:99]
u=1./(%pi.^[0:99])
u*v'

A=[%T %T %F %F]; B=[%T %F %T %F];
(~(A&B))==(A|B)
A=[%T %T %T %T %F %F %F %F]; 
B=[%T %T %F %F %T %T %F %F];
C=[%T %F %T %F %T %F %T %F];
(~((A==B)|(A==C)))==((~(A==B))&(~(A==C)))

s=0;
for j=1:150;
    s=s+j/2^(j-1)
end
s

clf
x=[0:0.01:4]'
y=x^2+1;
z=-x+5;
plot(x,[y,z])
xlabel('$x$')
ylabel('$x^2+1,-x+5$')
title('$\mbox{Plot of }x^2+1 \mbox{ and} -x+5$')
legend('$x^2+1$','$-x+5$',1)
