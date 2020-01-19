function [ filtOut ] = myLowPassButterworthDir( cutOff , n, M, theta , phi )
H = zeros(M);
theta=-theta;
for i=1:M
    for j=1:M
        if ((atan2d(i-M/2,j-M/2))<= (theta+phi/2))&&((atan2d(i-M/2,j-M/2))>=(theta-phi/2))
        H(i,j)= 1/(1 + (((i-M/2)^2+(j-M/2)^2)^(1/2)/cutOff)^(2*n));
        end
    end
end
Hmirror = rot90(H,2);
filtOut = H + Hmirror;
end

