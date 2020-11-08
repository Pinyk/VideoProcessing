%针对lena_256x256.bmp图像的直方图进行直方图均衡化，显示 “直方图均衡化后的效果图”和“均衡化后的直方图”。
a = imread('C:\Users\DELL\Desktop\lena.bmp'); 
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


