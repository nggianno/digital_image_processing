load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb (800:900 ,200:320 ,:);
im2_rgb = im_rgb (1200:1350 ,200:300 ,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);
res1 = myFilter(im1_rgb, edge_2d)
res2 = myFilter(im2_gray, edge_3d)
res3 = myFilter(im2_rgb, blur_3d)
res4 = myFilter(im1_gray, blur_3d)