%���lena_256x256.bmpͼ���ֱ��ͼ����ֱ��ͼ���⻯����ʾ ��ֱ��ͼ���⻯���Ч��ͼ���͡����⻯���ֱ��ͼ����
a = imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\Lena_256x256.bmp'); 
subplot(221);
imhist(a)
title('ԭͼ��ֱ��ͼ');
subplot(222);
imshow(a,[])
title('ԭͼ��');

b=histeq(a);
subplot(223);
imhist(b)
title('���⻯��ֱ��ͼ');
subplot(224);
imshow(b,[])
title('ֱ��ͼ���⻯��ͼ��');


