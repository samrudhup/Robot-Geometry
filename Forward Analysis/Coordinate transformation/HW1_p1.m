clc
clear all

T_BA=[sqrt(3)/2 0 0.5 20; 0 -1 0 0; 0.5 0 -sqrt(3)/2 0; 0 0 0 1];
R_BA=[sqrt(3)/2 0 0.5 ; 0 -1 0 ; 0.5 0 -sqrt(3)/2];
P_BAO=[20 0 0];
R_CA=[sqrt(2)/2 sqrt(2)/2 0; sqrt(2)/2 -sqrt(2)/2 0; 0 0 -1]
T_CA=[sqrt(2)/2 sqrt(2)/2 0 0; sqrt(2)/2 -sqrt(2)/2 0 0; 0 0 -1 10; 0 0 0 1];
P_CAO=[0 0 10];
T_DB=[1 0 0 0; 0 sqrt(3)/2 0.5 10; 0 -0.5 sqrt(3)/2 0; 0 0 0 1];
R_DB=[1 0 0 ; 0 sqrt(3)/2 0.5 ; 0 -0.5 sqrt(3)/2]
P_DBO=[0 10 0];
X=[0 0 0 1];

%To find the transforms
T_AB=[R_BA.',-(R_BA.')*(P_BAO.'); X]
T_BD=[R_DB.',-(R_DB.')*(P_DBO.'); X]


T_CD=(T_CA)*(T_AB)*(T_BD)

P_1inD=[20 -30 5 1].';
P_1inB=T_BD * P_1inD
P_1inA=T_AB * P_1inB
P_1inC=T_CA * P_1inA

