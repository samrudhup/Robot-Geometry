function[Y]=RG_HW5_p65(A1,B1,D1,A2,B2,D2)
x=((B1*D2)-(B2*D1))/(B1*A2-A1*B2)
if isnan(x) || x==-inf('single') || x==inf('single')
    Y=0;
else
    Y=1;
end
    