a=imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\office.jpg');
subplot(1,2,1);
imshow(a);
title('原始图像');
b=imadjust(a,[0.314, 0.588], [0 1]); 
subplot(1,2,2);
imshow(b);
title('线性变换图像');