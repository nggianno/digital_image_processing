function [filtOut] = myBandPassGaussDir(sigmaLow ,sigmaHigh , M, theta, phi)
H1 = myLowPassGaussDir(sigmaHigh, M, theta, phi);
H2 = myLowPassGaussDir(sigmaLow, M, theta, phi);
filtOut = H1-H2;

end

