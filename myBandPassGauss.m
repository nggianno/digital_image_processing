function [filtOut] = myBandPassGauss(sigmaLow ,sigmaHigh , M)
H1 = myLowPassGauss(sigmaHigh, M);
H2 = myLowPassGauss(sigmaLow, M);
filtOut = H1-H2;
end

