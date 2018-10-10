function [ filtOut ] = myBandPassIdealDir( cutOffLow, cutOffHigh, M, theta, phi)
 filtOut = myLowPassIdealDir(cutOffHigh, M, theta, phi) - myLowPassIdealDir(cutOffLow, M, theta, phi);
 
end

