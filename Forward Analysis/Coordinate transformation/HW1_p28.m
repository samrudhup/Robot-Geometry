clc 
clear all
theta1=30;
X=[0 0 0 1];
Y=[10 20 10];
% v=1-cosd(theta1)
c=cosd(theta1)
s=sind(theta1)

T_AD=[eye(3),Y.';X]

R_DE=[1 0 0; 0 c -s; 0 s c]
T_DE=[R_DE,zeros(3,1);X]
T_EB=[eye(3),(-1).*Y.';X]

T_AB=T_AD*T_DE*T_EB

theta2=60;
v1=1-cosd(theta2);
c1=cosd(theta2);
s1=sind(theta2);
mx=2/sqrt(56);
my=4/sqrt(56);
mz=6/sqrt(56);
R_AC=[mx^2*v1+c1 mx*my*v1-mz*s1 mx*mz*v1+my*s1; mx*my*v1+mz*s1 my^2*v1+c1 my*mz*v1-mx*s1; mx*mz*v1-my*s1 my*mz*v1+mx*s1 mz^2*v1+c1]
T_AC=[R_AC,zeros(3,1);X]

R_BA=T_AB(1:3,1:3).'
P_BO=T_AB(1:3,4)
Q=[0; -2.3205; 11.3397]
T_BA=[R_BA,Q;X]
T_BC=T_BA*T_AC

