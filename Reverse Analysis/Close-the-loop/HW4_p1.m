% S6=0;
% P_T6=[ 5 3 7].';
% P_TF=[ 25 23 24].';
% S_1F=[ 0 0 1].';
% a_67F=[ -0.153 0.459 0.875].'
% S_6F=[ 0.177 0.884 -0.433].';
function [ alpha71, theta7, gamma1, a_71, S_7, S_1]=HW4_p1(S6,P_T6,P_TF,S_1F,a_67F,S_6F) 

S_7F=cross(a_67F,S_6F);
a_71F=cross(S_7F,S_1F)/norm(cross(S_7F,S_1F));

%to find alpha71
c71=dot(S_7F,S_1F);
s71=dot(cross(S_7F,S_1F),a_71F);
alpha71=acosd(c71);

if sind(alpha71)~=0
%to find theta7
c7=dot(a_67F,a_71F);
s7=dot(cross(a_67F,a_71F),S_7F);
theta7=atand(s7/c7);
%to find gamma1
c_gamma1=dot(a_71F,[ 1 0 0]);
s_gamma1=dot(cross(a_71F,[ 1 0 0]),S_1F);
gamma1=atand(s_gamma1/c_gamma1);

%to find S7
P_6oF=P_TF-(dot(P_T6,[ 1 0 0].').*a_67F)-(dot(P_T6,[ 0 1 0].').*(cross(S_6F,a_67F)))-(dot(P_T6,[ 0 0 1].').*S_6F);
S_7=dot(cross(S_1F,P_6oF),a_71F)/sind(alpha71);
%to find a_71
a_71=dot(cross(P_6oF,S_1F),S_7F)/sind(alpha71);
%to find S_1
S_1=dot(cross(P_6oF,S_7F),a_71F)/sind(alpha71);

elseif sind(alpha71) == 0
    S_7=0;
    P_6oF=P_TF-(dot(P_T6,[ 1 0 0].').*a_67F)-(dot(P_T6,[ 0 1 0].').*(cross(S_6F,a_67F)))-(dot(P_T6,[ 0 0 1].').*S_6F);
    S_1=-dot(P_6oF,S_1F);
    a_71=abs(-(P_6oF+(S_1.*S_1F)));
%    a_71F=-(P_6oF+(S_1.*S_1F)/a_71
    %to find theta7
    c7=dot(a_67F,a_71F);
    s7=dot(cross(a_67F,a_71F),S_7F);
    theta7=atand(s7/c7);
    %to find gamma1
    c_gamma1=dot(a_71F,[ 1 0 0]);
    s_gamma1=dot(cross(a_71F,[ 1 0 0]),S_1F);
    gamma1=atand(s_gamma1/c_gamma1);
    
else 
    teta7=0;
    a_71F=0;
    S_1=-dot(P_6oF,S_1F);
    c_gamma1=dot(a_71F,[ 1 0 0]);
    s_gamma1=dot(cross(a_71F,[ 1 0 0]),S_1F);
    gamma1=atand(s_gamma1/c_gamma1);
    S_7=0;
    
    
end
    
   
