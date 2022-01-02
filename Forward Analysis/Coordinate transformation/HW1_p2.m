clc 
clear all
T_AC=[1 0 0 3; 0 1 0 4; 0 0 1 -2; 0 0 0 1]
m=[2 4 7];
P_1=[3 4 -2];
mx=2/sqrt(69);
my=4/sqrt(69);
mz=7/sqrt(69);
theta=60;
X=[0 0 0 1];
Y=[0 0 0];
v=1-cosd(theta)
c=cosd(theta)
s=sind(theta)
R_CD=[mx^2*v+c mx*my*v-mz*s mx*mz*v+my*s; mx*my*v+mz*s my^2*v+c my*mz*v-mx*s; mx*mz*v-my*s my*mz*v+mx*s mz^2*v+c]
T_CD=[R_CD,Y.';X]
T_DB=[eye(3),(-1).*(P_1.');X]
T_AC=[eye(3),P_1.';X]
T_AB=T_AC*T_CD*T_DB

