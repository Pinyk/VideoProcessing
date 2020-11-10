[X,map]=imread('D:\学习笔记\视频大数据\高宇科-实验二\图片及文件\imageIndex.tif');
subplot(121);
RGB = ind2rgb(X,map);
imshow(RGB);
title('RGB图像');

subplot(122);
GRAY = ind2gray(X,map);
imshow(GRAY);
title('灰度图像');