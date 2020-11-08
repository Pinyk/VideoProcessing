%针对lena_256x256.bmp图像的直方图进行直方图均衡化，显示 “直方图均衡化后的效果图”和“均衡化后的直方图”。
a = imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\Lena_256x256.bmp'); 
subplot(221);
imhist(a)
title('原图像直方图');
subplot(222);
imshow(a,[])
title('原图像');

b=histeq(a);
subplot(223);
imhist(b)
title('均衡化后直方图');
subplot(224);
imshow(b,[])
title('直方图均衡化后图像');


