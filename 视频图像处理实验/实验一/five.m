a=imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\Lena_256x256.bmp');
subplot(1,2,1);
imshow(a);
title('原始图像');
b=graythresh(a);
bw=im2bw(a,b);
subplot(1,2,2);
imshow(bw);
title('二值化处理');