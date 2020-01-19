function [imOut] = myConvFreq(imX,imY)
imXf = fft2(imX);
imYf = fft2(imY);
[x1,x2]=size(imXf);
[y1,y2]=size(imYf);
k1 = x1+y1-1;
k2 = x2+y2-1;
imXfExtend = zeros(k1,k2);
imYfExtend = zeros(k1,k2);
for i=1:k1
	for j=1:k2
        if (i<=x1)&&(j<=x2)
		 imXfExtend(i,j) = imXf(i,j);
        end
	end
end
for i=1:k1
	for j=1:k2
        if (i<=y1)&&(j<=y2)
		 imYfExtend(i,j) = imYf(i,j);
        end
	end
end
z = zeros(k1,k2);
for n1=1:k1
	for n2=1:k2
		for i=1:x1
			for j=1:x2
			 if (n1-i+1>=1) && (n1-i+1<=k1) && (n2-j+1>=1)&& (n2-j+1<=k2)
				z(n1,n2) = z(n1,n2) + imXfExtend(i,j)*imYfExtend(n1-i+1,n2-j+1);
			end
		end
	end
  end	
end
imOut = z;
end

