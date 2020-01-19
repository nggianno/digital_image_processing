function [ filtOut ] = myHighPassGaussDir( sigma, M, theta, phi )
H = myLowPassGaussDir(sigma, M, theta, phi);
filtOut = 1 - H;

end

