clear all 
clc
alpha12=75;
alpha23=110;
alpha34=60;
alpha41=80;
theta1=120;
s12=sind(alpha12);
s23=sind(alpha23);
s34=sind(alpha34);
s41=sind(alpha41);
c12=cosd(alpha12);
c23=cosd(alpha23);
c34=cosd(alpha34);
c41=cosd(alpha41);
s1=sind(theta1);
c1=cosd(theta1);
B=s41*s23*s1
A=-(c12*s23*c1*s41+(s12*c41*s23))
D=-s12*c23*c1*s41+c41*c12*c23-c34
Q=(2*B)^2-4*(D-A)*(D+A);
X2a=(-2*B+sqrt(Q))/(2*(D-A))
X2b=(-2*B-sqrt(Q))/(2*(D-A))
theta2a=atand(X2a)*2
theta2b=atand(X2b)*2

s2=sind(theta2a);
c2=cosd(theta2a);
X_2bar=s23*s2
Y_2bar=-(s12*c23+c12*s23*c2)
s4=(X_2bar*c1-Y_2bar*s1)/s34
theta4a=asind(s4)

s2=sind(theta2b);
c2=cosd(theta2b);
X_2bar=s23*s2
Y_2bar=-(s12*c23+c12*s23*c2)
s4=(X_2bar*c1-Y_2bar*s1)/s34
theta4b=asind(s4)


%to find theta3
c2=cosd(theta2a);
s2=cosd(theta2a);
X_12=s41*s1*c2+s12*c41*s2+c12*s41*c1*s2
s3a=(X_12/s34)
theta3a=asind(s3a)

c2=cosd(theta2b);
s2=cosd(theta2b);
X_12=s41*s1*c2+s12*c41*s2+c12*s41*c1*s2
s3b=(X_12/s34)
theta3ab=asind(s3b)



