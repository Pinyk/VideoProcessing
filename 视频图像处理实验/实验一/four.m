I=imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\Lena_256x256.bmp');
subplot(1,2,1);
imshow(I);
title('ԭʼͼ��');
H=fspecial('unsharp');
sharpened = imfilter(I,H,'replicate');
subplot(1,2,2);
imshow(sharpened);
title('��ͼ��');