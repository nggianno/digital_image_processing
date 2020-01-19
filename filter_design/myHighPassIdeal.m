function [ filtOut ] = myHighPassIdeal( cutOff, M )
 H = myLowPassIdeal(cutOff, M);
 filtOut = 1 - H;


end

