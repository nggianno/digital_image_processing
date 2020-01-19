
im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID4_2((i-1)*50+j) == 4
        im(i,j) = 1;
    end
    if ClusterID4_2((i-1)*50+j) == 3
        im(i,j) = 0.75;
    end
    if ClusterID4_2((i-1)*50+j) == 2
        im(i,j) = 0.25;
    end
    end
end
figure
imshow(im)
im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID4_1((i-1)*50+j) == 4
        im(i,j) = 1;
    end
    if ClusterID4_1((i-1)*50+j) == 3
        im(i,j) = 0.75;
    end
    if ClusterID4_1((i-1)*50+j) == 2
        im(i,j) = 0.25;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID3_2((i-1)*50+j) == 3
        im(i,j) = 1;
    end
    if ClusterID3_2((i-1)*50+j) == 2
        im(i,j) = 0.5;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID3_1((i-1)*50+j) == 3
        im(i,j) = 1;
    end
    if ClusterID3_1((i-1)*50+j) == 2
        im(i,j) = 0.5;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID2_2((i-1)*50+j) == 2
        im(i,j) = 1;
    end
    end
end
figure
imshow(im)
im = zeros(50);
for i = 1:50
    for j =1:50
    if ClusterID2_1((i-1)*50+j) == 2
        im(i,j) = 1;
    end
    end
end
figure
imshow(im)
im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID4_2((i-1)*50+j) == 4
        im(i,j) = 1;
    end
    if NClusterID4_2((i-1)*50+j) == 3
        im(i,j) = 0.75;
    end
    if NClusterID4_2((i-1)*50+j) == 2
        im(i,j) = 0.25;
    end
    end
end
figure
imshow(im)
im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID4_1((i-1)*50+j) == 4
        im(i,j) = 1;
    end
    if NClusterID4_1((i-1)*50+j) == 3
        im(i,j) = 0.75;
    end
    if NClusterID4_1((i-1)*50+j) == 2
        im(i,j) = 0.25;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID3_2((i-1)*50+j) == 3
        im(i,j) = 1;
    end
    if NClusterID3_2((i-1)*50+j) == 2
        im(i,j) = 0.5;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID3_1((i-1)*50+j) == 3
        im(i,j) = 1;
    end
    if NClusterID3_1((i-1)*50+j) == 2
        im(i,j) = 0.5;
    end
    end
end
figure
imshow(im)

im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID2_2((i-1)*50+j) == 2
        im(i,j) = 1;
    end
    end
end
figure
imshow(im)
im = zeros(50);
for i = 1:50
    for j =1:50
    if NClusterID2_1((i-1)*50+j) == 2
        im(i,j) = 1;
    end
    end
end
figure
imshow(im)