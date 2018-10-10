function [ filtOut ] = myLowPassIdeal( cutOff, M )
H = zeros(M);
for i=1:M
    for j=1:M
        if (((i-M/2)^2+(j-M/2)^2)^(1/2))<= cutOff
            H(i,j)=1;
        end
    end
end
filtOut = H;
end

