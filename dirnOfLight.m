%function theta = dirnOfLight(I)
close all;
clear all;
clc;

I = rgb2gray(imread('testcase.png'));

[u,v] = fastGVF(I);

div = divergence(u,v);
B = div < 0;
C = div > 0;

  figure,imshow(I);
  quiver(u,v)
   figure('Name','C'),imshow(C);
   figure('Name','B'),imshow(B);
   
[image0 num] = bwlabel(B);
[image1 num] = bwlabel(C);

stats0 = regionprops(image0, 'centroid');
centroids0 = cat(1, stats0.Centroid);

stats1 = regionprops(image1, 'centroid');
centroids1 = cat(1, stats1.Centroid);

BB_stat0 = regionprops(image0,'BoundingBox');
BB_stat1 = regionprops(image1,'BoundingBox');


hold on
for k = 1:length(BB_stat0)
  thisBB = BB_stat0(k).BoundingBox;
  areas0(k) = thisBB(3).*thisBB(4);
 end

for k = 1:length(BB_stat1)
  thisBB = BB_stat1(k).BoundingBox;
  areas1(k) = thisBB(3).*thisBB(4);
 end

  maxArea0 = max(areas0(:));
[m0,n0] = find(areas0==maxArea0);

maxArea1 = max(areas1(:));
[m1,n1] = find(areas1==maxArea1);

 plot(centroids0(:,1), centroids0(:,2), 'b*')
 plot(centroids1(:,1), centroids1(:,2), 'g*')
plot(centroids0(n0,1), centroids0(n0,2), 'b*');
plot(centroids1(n1,1), centroids1(n1,2), 'g*');
hold off

r1= centroids0(n0,1);
c1= centroids0(n0,2);
r2= centroids1(n1,1);
c2= centroids1(n1,2);

vect = [(r1-r2) (c1-c2)];
vectMag = sqrt(vect(1).^2 + vect(2).^2);
v = vect(2)/vectMag;
u = vect(1)/vectMag;

tanVal = v/u;
theta = abs(atand(tanVal));
if r2>r1
    theta = theta+180;
end

theta
%theta = atan2d(vect(2),vect(1))

