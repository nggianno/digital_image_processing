function [ myAffinityMat ] = Image2Graph( imIn )
[x1,x2,x3] = size(imIn);
A = zeros(x1*x2);
for i=1:x1
    for j=1:x2
        for k=1:x1
            for l=1:x2
                    X = (i-1)*x1+j;
                    Y = (k-1)*x2+l;
                    if X<=Y
                        d(X,Y) = sqrt((imIn(i,j,1)-imIn(k,l,1))^2+(imIn(i,j,2)-imIn(k,l,2))^2+(imIn(i,j,3)-imIn(k,l,3))^2);
                        A(X,Y) = 1 / exp(d(X,Y));
                    end
                    A(Y,X) = A(X,Y);
            end
        end
    end
end
myAffinityMat = A;
              
end

