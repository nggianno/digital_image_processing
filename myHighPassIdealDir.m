function filtOut = myHighPassIdealDir(cutOff , M, theta , phi)
 H = myLowPassIdealDir(cutOff, M, theta, phi);
 filtOut = 1 - H;
end

