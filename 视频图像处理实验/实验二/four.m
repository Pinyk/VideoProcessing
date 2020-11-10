A=magic(256);
I=mat2gray(A);
imshow(I);
[X,map] = gray2ind(I);

disp(['矩阵A的数据类型=',class(A)]);
disp(['灰度图像I的数据类型=',class(I)]);
disp(['索引图像X的数据类型=',class(X)]);A