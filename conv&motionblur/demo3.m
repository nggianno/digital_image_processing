load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb (800:900 ,200:320 ,:);
im2_rgb = im_rgb (1200:1350 ,200:300 ,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);
%I give a random vector in mot_vec and a random exp_time
blurred1 = myMotBlur(im1_rgb,[2 3],1);
blurred2 = myMotBlur(im2_gray,[-3 1],4);