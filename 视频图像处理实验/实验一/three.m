%3. ԭʼlena_256x256.bmpͼ������ֵΪ0������ֱ�Ϊ10��30���ͼ�񣬲���3x3ģ�壬��Լ����������ͼ�����ͼ��ƽ������
%��ʾ��ԭʼͼ�񡱡�������������ԭʼͼ�񡱡���3x3����ƽ������ƽ��ͼ��(��ֵ=0������=10)���͡�3x3����ƽ������ƽ��ͼ���ֵ=0������=30)����
a = imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\Lena_256x256.bmp'); 
b=imnoise(a,'gaussian',0,10);
c=imnoise(a,'gaussian',0,30);
d=filter2(fspecial('average',3),b)/255;
e=filter2(fspecial('average',3),c)/255;
subplot(321),imshow(a),title('ԭͼ��');
subplot(323),imshow(b),title('��������ͼ��(����10)');
subplot(324),imshow(c),title('��������ͼ��(����30)');
subplot(325),imshow(d),title('3x3����ƽ����(����10)');
subplot(326),imshow(e),title('3x3����ƽ����(����30)');