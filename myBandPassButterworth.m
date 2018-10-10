function [ filtOut ] = myBandPassButterworth(cutOffLow , cutOffHigh , n, M)
H = myLowPassButterworth(cutOffHigh, n, M) - myLowPassButterworth(cutOffLow, n, M);
filtOut = H;
end

