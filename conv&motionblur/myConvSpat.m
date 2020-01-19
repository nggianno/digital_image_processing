function [imOut] = myConvSpat(imX,imY)
[x1,x2]=size(imX);
[y1,y2]=size(imY);
k1 = x1+y1-1;
k2 = x2+y2-1;
imXExtend = zeros(k1,k2);
imYExtend = zeros(k1,k2);
for i=1:k1
	for j=1:k2
        if (i<=x1)&&(j<=x2)
		 imXExtend(i,j) = imX(i,j);
        end
	end
end
for i=1:k1
	for j=1:k2
        if (i<=y1)&&(j<=y2)
		 imYExtend(i,j) = imY(i,j);
        end
	end
end
z = zeros(k1,k2);
for n1=1:k1
	for n2=1:k2
		for i=1:x1
			for j=1:x2
			 if (n1-i+1>=1) && (n1-i+1<=k1) && (n2-j+1>=1)&& (n2-j+1<=k2)
				z(n1,n2) = z(n1,n2) + imXExtend(i,j)*imYExtend(n1-i+1,n2-j+1);
			end
		end
	end
  end	
end
imOut = z;