function [ filtOut ] = myHighPassGauss( sigma, M )
H = myLowPassGauss(sigma, M);
filtOut = 1 - H;
end

