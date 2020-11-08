I=imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\Lena_256x256.bmp');
subplot(1,2,1);
imshow(I);
title('原始图像');
H=fspecial('unsharp');
sharpened = imfilter(I,H,'replicate');
subplot(1,2,2);
imshow(sharpened);
title('锐化图像');