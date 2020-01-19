function [filtOut] = myLowPassGaussDir(sigma , M, theta , phi)
H = zeros(M);
theta=-theta;
for i=1:M
    for j=1:M
        if ((atan2d(i-M/2,j-M/2))<= (theta+phi/2))&&((atan2d(i-M/2,j-M/2))>=(theta-phi/2))
        H(i,j) = exp(-((i-M/2)^2+(j-M/2)^2)/(2*sigma^2));
        end
    end
end
Hmirror = rot90(H,2);
filtOut = H + Hmirror;

end

