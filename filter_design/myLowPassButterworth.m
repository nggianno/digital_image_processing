function [ filtOut ] = myLowPassButterworth( cutOff, n, M )
for i=1:M
    for j=1:M
        H(i,j)= 1/(1 + (((i-M/2)^2+(j-M/2)^2)^(1/2)/cutOff)^(2*n));
    end
end
filtOut = H;
end

