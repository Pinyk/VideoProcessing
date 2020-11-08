%1. 绘制lena_256x256.bmp图像的直方图，显示“原始图”和“原始图像的直方图”。
a = double(imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\Lena_256x256.bmp')); 
subplot(121);
hist(a(:),100);
subplot(122);
imshow(a,[])

