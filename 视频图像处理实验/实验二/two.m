[X,map]=imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ���\ͼƬ���ļ�\imageIndex.tif');
subplot(121);
RGB = ind2rgb(X,map);
imshow(RGB);
title('RGBͼ��');

subplot(122);
GRAY = ind2gray(X,map);
imshow(GRAY);
title('�Ҷ�ͼ��');