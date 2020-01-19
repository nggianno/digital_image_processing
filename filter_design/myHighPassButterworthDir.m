function [ filtOut ] = myHighPassButterworthDir( cutOff, n , M, theta, phi )
H = myLowPassButterworthDir(cutOff, n , M, theta, phi);
filtOut = 1 - H;

end
