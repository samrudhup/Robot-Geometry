
function [X1,X2] = HW7_p1(a1,b1,d1,e1,f1,g1,h1,i1,j1,a2,b2,d2,e2,f2,g2,h2,i2,j2)
syms x1
syms x2
% L1=0;
% L2=0;
% M1=0;
% M2=0;
% N1=0;
% N2=0;
t=x2^2;
u=x2;
v=1;
s=x2^3;
% deter=0;
L1=(a1*x1^2)+(b1*x1)+d1;
L2=(a2*x1^2)+(b2*x1)+d2;
M1=(e1*x1^2)+(f1*x1)+g1;
M2=(e2*x1^2)+(f2*x1)+g2;
N1=(h1*x1^2)+(i1*x1)+j1;
N2=(h2*x1^2)+(i2*x1)+j2;
matx=[ 0 L1 M1 N1; 0 L2 M2 N2; L1 M1 N1 0; L2 M2 N2 0];
deter=det(matx);
R=solve(deter==0,x1);
[X1]=vpa(R)


X2=zeros(8,1);

for i=1:8
    x1=X1(i);
    L1=(a1*x1^2)+(b1*x1)+d1;
    L2=(a2*x1^2)+(b2*x1)+d2;
    M1=(e1*x1^2)+(f1*x1)+g1;
    M2=(e2*x1^2)+(f2*x1)+g2;
    N1=(h1*x1^2)+(i1*x1)+j1;
    N2=(h2*x1^2)+(i2*x1)+j2;
    NUM=det([M1 N1; M2 N2]);
    DEN=det([L1 N1;L2 N2]);
    X2(i)=-NUM/DEN;
    ans=[X1(i),X2(i)]'
   
    
end


    
