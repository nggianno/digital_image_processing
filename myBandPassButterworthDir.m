function [ filtOut ] = myBandPassButterworthDir(cutOffLow , cutOffHigh , n, M, theta, phi)
H = myLowPassButterworthDir(cutOffHigh, n, M, theta, phi) - myLowPassButterworthDir(cutOffLow, n, M, theta, phi);
filtOut = H;

end
