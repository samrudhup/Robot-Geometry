clc;clear;

a12=5.5;
a23=3.6;
a34=7.2;
a45=2.8;
a56=3.8;
a61=6.2;

alpha12=47.5;
alpha23=221;
alpha34=115;
alpha45=38.5;
alpha56=295;
alpha61=45;

S1=6;
S2=4.5;
S4=7.5;
S6=3.9;

theta3=90;
theta6=220;

s12=sind(alpha12);
s23=sind(alpha23);
s34=sind(alpha34);
s45=sind(alpha45);
s56=sind(alpha56);
s61=sind(alpha61);

c12=cosd(alpha12);
c23=cosd(alpha23);
c34=cosd(alpha34);
c45=cosd(alpha45);
c56=cosd(alpha56);
c61=cosd(alpha61);

s3=sind(theta3);
s6=sind(theta6);

c3=cosd(theta3);
c6=cosd(theta6);

X6=s56*s6;
Y6=-(s61*c56+c61*s56*c6);
Z6=c61*c56-s61*s56*c6;

A1 = s34 * (Y6 * c12 * c23 * c3 + X6 * s3) + c34 * s23 * c12 * Y6;
B1 = s34 * (X6 * c12 * c23 * c3 - Y6 * s3) + c34 * s23 * c12 * X6;
D1 = -s12 * Z6 * (c23 * c3 * s34 + c34 * s23);
E1 = s34 * (c23 * X6 * c3 - c12 * Y6 * s3) + c34 * s23 * X6;
F1 = s34 * (-c12 * X6 * s3 - c23 * Y6 * c3) - c34 * s23 * Y6;
G1 = Z6 * s12 * s3 * s34;
H1 = -Y6 * c3 * s12 * s23 * s34 + Y6 * c23 * c34 * s12;
I1 = -X6 * c3 * s12 * s23 * s34 + X6 * c23 * c34 * s12;
J1 = -Z6 * (c3 * s23 * s34 - c23 * c34) * c12 - c45;

A2 = S6 * s56 * c12 * c61 * s23 * s6 + S1 * X6 * c12 * s23 + S2 * s23 * X6 + a56 * (-c12 * c56 * c6 * c61 * s23 + c12 * s23 * s56 * s61) + a61 * (c12 * c6 * s23 * s56 * s61 - c12 * c56 * c61 * s23) - a12 * s23 * s12 * Y6 + a23 * c12 * Y6 * c23 - S4 * s34 * (-Y6 * c12 * c23 * s3 + X6 * c3) + a34 * (Y6 * c12 * c23 * c3 + X6 * s3) - a45 * s23 * c12 * Y6 * c45 / s45;
B2 = S6 * s56 * c12 * s23 * c6 - S1 * Y6 * c12 * s23 - S2 * s23 * Y6 + a56 * c56 * c12 * s23 * s6 - a12 * s23 * s12 * X6 + a23 * c12 * X6 * c23 - S4 * s34 * (-X6 * c12 * c23 * s3 - Y6 * c3) + a34 * (X6 * c12 * c23 * c3 - Y6 * s3) - a45 * s23 * c12 * X6 * c45 / s45;
D2 = (((((-S6 * s6 * s61 + c61 * (a61 * c6 + a56)) * s56 + c56 * s61 * (a56 * c6 + a61)) * s23 - c23 * Z6 * (S4 * s3 * s34 + a34 * c3 + a23)) * s12 - c12 * s23 * Z6 * a12) * s45 + Z6 * a45 * c45 * s12 * s23) / s45;
E2 = S6 * s56 * c6 * s23 - S1 * s23 * Y6 - S2 * s23 * c12 * Y6 + a56 * c56 * s23 * s6 + a23 * c23 * X6 - S4 * s34 * (-X6 * c23 * s3 - Y6 * c12 * c3) + a34 * (X6 * c23 * c3 - Y6 * c12 * s3) - a45 * s23 * X6 * c45 / s45;
F2 = -S6 * s56 * c61 * s23 * s6 - S1 * s23 * X6 - S2 * s23 * c12 * X6 + a56 * (c56 * c6 * c61 * s23 - s23 * s56 * s61) + a61 * (-c6 * s23 * s56 * s61 + c56 * c61 * s23) - a23 * c23 * Y6 - S4 * s34 * (-X6 * c12 * c3 + Y6 * c23 * s3) + a34 * (-X6 * c12 * s3 - Y6 * c23 * c3) + a45 * s23 * Y6 * c45 / s45;
G2 = Z6 * s12 * (-S4 * c3 * s34 + S2 * s23 + a34 * s3);
H2 = S6 * s56 * c23 * c61 * s12 * s6 + S1 * X6 * c23 * s12 + a56 * (-c23 * c56 * c6 * c61 * s12 + c23 * s12 * s56 * s61) + a61 * (c23 * c6 * s12 * s56 * s61 - c23 * c56 * c61 * s12) + a12 * c12 * Y6 * c23 - a23 * s23 * s12 * Y6 - S4 * s34 * s23 * s12 * Y6 * s3 - a34 * s23 * s12 * Y6 * c3 - a45 * c23 * s12 * Y6 * c45 / s45;
I2 = S6 * s56 * c23 * s12 * c6 - S1 * Y6 * c23 * s12 + a56 * c56 * c23 * s12 * s6 + a12 * c12 * X6 * c23 - a23 * s23 * s12 * X6 - S4 * s34 * s23 * s12 * X6 * s3 - a34 * s23 * s12 * X6 * c3 - a45 * c23 * s12 * X6 * c45 / s45;
J2 = (((((S6 * s6 * s61 - c61 * (a61 * c6 + a56)) * s56 - c56 * s61 * (a56 * c6 + a61)) * c23 - s23 * Z6 * (S4 * s3 * s34 + a34 * c3 + a23)) * c12 - c23 * s12 * Z6 * a12) * s45 - a45 * (Z6 * c12 * c23 * c45 - c34)) / s45;

a1=A1-D1-H1+J1;
b1=2*(I1-B1);
d1=-A1-D1+H1+J1;
e1=2*(G1-E1);
f1=4*F1;
g1=2*(G1+E1);
h1=-A1+D1-H1+J1;
i1=2*(I1+B1);
j1=A1+D1+H1+J1;

a2=A2-D2-H2+J2;
b2=2*(I2-B2);
d2=-A2-D2+H2+J2;
e2=2*(G2-E2);
f2=4*F2;
g2=2*(G2+E2);
h2=-A2+D2-H2+J2;
i2=2*(I2+B2);
j2=A2+D2+H2+J2;

[X1,X2] = HW9_p1(a1,b1,d1,e1,f1,g1,h1,i1,j1,a2,b2,d2,e2,f2,g2,h2,i2,j2)
n=imag(X1)==0;
for n=1:8;
    s1=(2*X1(n))./(1+X1(n).^2);
    c1=(1-X1(n).^2)./(1+X1(n).^2);
    t1=s1/c1;
    theta1(n)=double(acosd(c1));
end

for n=1:8;
    s2=(2*X2(n))./(1+X2(n).^2);
    c2=(1-X2(n).^2)./(1+X2(n).^2);
    t2=s2/c2;
    theta2(n)=double(acosd(c2));
end

% solving for theta4
for n=1:8;
    
    X6= s56*s6;
    Y6= -(s61*c56 + c61*s56*c6);
    Z6= c61*c56 - s61*s56*c6;

    X61= X6*cosd(theta1(n)) - Y6*sind(theta1(n));
    Y61= c12*(X6*sind(theta1(n)) + Y6*cosd(theta1(n)))-s12*Z6;
    Z61= s12*(X6*sind(theta1(n)) + Y6*cosd(theta1(n)))+c12*Z6;

    X612=X61*cosd(theta2(n))- Y61*sind(theta2(n));
    Z612=s23*(X61*sind(theta2(n))+ Y61*cosd(theta2(n)))+c23*Z61;

    Y6123=c34*(X612*s3)-s34*(Z612);
    c4=Y6123/s45;
    theta4(n)=acosd(c4);

end
%to find theta5
for n=1:8;
    
    X3bar=s34*s3;
    Y3bar=-(s23*c34+c23*s34*c3);
    Z3bar=c23*c34-s23*s34*c3;

    Z32=s12*(X3bar*cosd(theta2(n))-Y3bar*sind(theta2(n)));
    Y32=c12*(X3bar*sind(theta2(n))+Y3bar*cosd(theta2(n)))-s12*Z3bar;
    X32=X3bar*cosd(theta2(n))-Y3bar*sind(theta2(n));

    Z321=s61*(X32*sind(theta1(n))+Y32*cosd(theta1(n)))+c61*Z32;
    Y321=c61*(X32*sind(theta1(n))+Y32*cosd(theta1(n)))-s61*Z32;
    X321=X32*cosd(theta1(n))-Y32*sind(theta1(n));

    Y3216=c56*(X321*s6)+Y321*c6-s56*Z321;
    c5=Y3216/s45;
    theta5(n)=acosd(c5);
end

%TO FIND S3

s1=sind(150.83);
c1=cosd(150.83);
s2=sind(-120.88);
c2=cosd(-120.88);
s4=sind(-98.8100);
c4=cosd(-98.8100);
s5=sind(-127.2712);
c5=cosd(-127.2712);
X6bar=s61*s6;
Y6bar=-(s56*c61+c56*s61*c6);

X65=X6bar*s5-Y6bar*s5;

U16=s1*s61;
V16=-(s6*c1+c6*s1*c61);
W16=c6*c1-s6*s1*c61;
W165=s5*(U16*s56+V16*c56)+c5*W16;

X3=s23*s3;
Y3=-(s34*c23+c34*s23*c3);
X34=X3*c4-Y3*s4;

W34=c4*c3-s4*s3*c34;

X4=s34*s4;

X5bar=s56*s5;
W65=c5*c6-s5*s6*c56;


S3=-(S1*(X65)+a12*(W165)+S2*(X34)+a23*(W34)+a34*(c4)+a45+a56*(c5)+S6*(X5bar)+a61*(W65))/(X4);

%To find S5

Z6bar=c56*c61-s56*s61*c6;
U16=s1*s61;
V16=-(s6*c1+c6*s1*c61);
U165=U16*c56-V16*s56;

X1bar=s12*s1;
Y1bar=s12*s1;
Z1bar=c61*c12-s61*s12*c1;
Z16=s56*(X1bar*s6+Y1bar*c6)+c56*Z1bar;

U34=s3*s34;
V34=-(s4*c3+c4*s3*c34);
U345=U34*c45-V34*s45;

Z4=c34*c45-s34*s45*c4;
U45=s4*s45;
U65=s6*s56;
S5=-(S1*Z6bar+a12*U165+S2*Z16+a23*U345+S3*Z4+a34*U45+S4*c45+S6*c56+a61*U65)
