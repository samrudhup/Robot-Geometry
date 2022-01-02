function[P_fT,S6_vect,a67_vect]= HW3_p2a(phy1,theta2,theta3,theta4,theta5,theta6,alpha12,alpha23,alpha34,alpha45,alpha56,a12,a23,a34,a45,a56,S2,S3,S4,S5,S6,P_6T)

T_f1=[ cosd(phy1) -sind(phy1) 0 0; sind(phy1) cosd(phy1) 0 0; 0 0 1 0; 0 0 0 1];
T_12=[cosd(theta2) -sind(theta2) 0 a12; sind(theta2)*cosd(alpha12) cosd(theta2)*cosd(alpha12) -sind(alpha12) -sind(alpha12)*S2; sind(theta2)*sind(alpha12) cosd(theta2)*sind(alpha12) cosd(alpha12) cosd(alpha12)*S2; 0 0 0 1]
T_23=[cosd(theta3) -sind(theta3) 0 a23; sind(theta3)*cosd(alpha23) cosd(theta3)*cosd(alpha23) -sind(alpha23) -sind(alpha23)*S3; sind(theta3)*sind(alpha23) cosd(theta3)*sind(alpha23) cosd(alpha23) cosd(alpha23)*S3; 0 0 0 1]
T_34=[cosd(theta4) -sind(theta4) 0 a34; sind(theta4)*cosd(alpha34) cosd(theta4)*cosd(alpha34) -sind(alpha34) -sind(alpha34)*S4; sind(theta4)*sind(alpha34) cosd(theta4)*sind(alpha34) cosd(alpha34) cosd(alpha34)*S4; 0 0 0 1]
T_45=[cosd(theta5) -sind(theta5) 0 a45; sind(theta5)*cosd(alpha45) cosd(theta5)*cosd(alpha45) -sind(alpha45) -sind(alpha45)*S5; sind(theta5)*sind(alpha45) cosd(theta5)*sind(alpha45) cosd(alpha45) cosd(alpha45)*S5; 0 0 0 1]
T_56=[cosd(theta6) -sind(theta6) 0 a56; sind(theta6)*cosd(alpha56) cosd(theta6)*cosd(alpha56) -sind(alpha56) -sind(alpha56)*S6; sind(theta6)*sind(alpha56) cosd(theta6)*sind(alpha56) cosd(alpha56) cosd(alpha56)*S6; 0 0 0 1]
T_f6=T_f1*T_12*T_23*T_34*T_45*T_56
P_fT=T_f6*P_6T.'
S6_vect=T_f6(:,3);
a67_vect=T_f6(:,1);
end



