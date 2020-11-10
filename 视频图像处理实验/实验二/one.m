%在Matlab中读入一幅RGB图像，并将其转换为灰度图像和索引图像。
x = imread('D:\学习笔记\视频大数据\高宇科-实验二\图片及文件\start.jpg');

%转化为灰度图像
x_gray = rgb2gray(x);
subplot(121);
imshow(x_gray,[]);
title('灰度图像');

%转化为索引图像
subplot(122);
[X,map] = rgb2ind(x,244);
imshow(X,map);
title('索引图像');


