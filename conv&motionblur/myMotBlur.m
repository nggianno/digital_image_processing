function [ imOut,myMotBlurMask ] = myMotBlur2(imX, mot_vec, exposure_time)
shift = mot_vec * exposure_time;
d = max(abs(shift(1)),abs(shift(2)));
h = zeros(2*d+1);
h(d+1,d+1)=1;
for i = sign(shift(1)):sign(shift(1)):shift(1)
    h(d+1,d+1+i) = 1;
end
for i= sign(shift(2)):sign(shift(2)):shift(2)
    h(d-i+1,d+1) = 1;
end
imOut = myFilter(imX,h);
myMotBlurMask = h;  
end

