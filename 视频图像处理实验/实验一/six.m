a=imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\office.jpg');
subplot(1,2,1);
imshow(a);
title('ԭʼͼ��');
b=imadjust(a,[0.314, 0.588], [0 1]); 
subplot(1,2,2);
imshow(b);
title('���Ա任ͼ��');