function [ clusterIdx ] = myNCuts( anAffinityMat ,k )
W = anAffinityMat ;
[x1,x2] = size(W);
D = zeros(x1,x2);
for i=1:x1
    for j=1:x2
        D(i,i) = D(i,i) + W(i,j);
    end
end
L = D - W;
[EigVec,EigVal] = eigs(L,D, k, 'SM');
labels = kmeans(EigVec,k);
clusterIdx = labels;

end

