function [ filtOut ] = myBandPassIdeal( cutOffLow, cutOffHigh, M )
 filtOut = myLowPassIdeal(cutOffHigh, M) - myLowPassIdeal(cutOffLow, M);
end

