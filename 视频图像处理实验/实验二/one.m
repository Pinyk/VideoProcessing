%��Matlab�ж���һ��RGBͼ�񣬲�����ת��Ϊ�Ҷ�ͼ�������ͼ��
x = imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ���\ͼƬ���ļ�\start.jpg');

%ת��Ϊ�Ҷ�ͼ��
x_gray = rgb2gray(x);
subplot(121);
imshow(x_gray,[]);
title('�Ҷ�ͼ��');

%ת��Ϊ����ͼ��
subplot(122);
[X,map] = rgb2ind(x,244);
imshow(X,map);
title('����ͼ��');


