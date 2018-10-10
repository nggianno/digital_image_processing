function [ filtOut ] = myHighPassButterworth( cutOff, n , M )
H = myLowPassButterworth(cutOff, n , M);
filtOut = 1 - H;
end

