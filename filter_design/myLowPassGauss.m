function [ filtOut ] = myLowPassGauss( sigma, M )
for i=1:M
    for j=1:M
        H(i,j) = exp(-((i-M/2)^2+(j-M/2)^2)/(2*sigma^2));
    end
end
filtOut = H;
end

