%3. ԭʼlena_256x256.bmpͼ������ֵΪ0������ֱ�Ϊ10��30���ͼ�񣬲���3x3ģ�壬��Լ����������ͼ�����ͼ��ƽ������
%��ʾ��ԭʼͼ�񡱡�������������ԭʼͼ�񡱡���3x3����ƽ������ƽ��ͼ��(��ֵ=0������=10)���͡�3x3����ƽ������ƽ��ͼ���ֵ=0������=30)����
a = imread('C:\Users\DELL\Desktop\lena.bmp'); 
b=imnoise(a,'gaussian',0,10);
c=imnoise(a,'gaussian',0,30);
subplot(321),imshow(a),title('ԭͼ��');
subplot(323),imshow(b),title('��������ͼ��1');
subplot(324),imshow(c),title('��������ͼ��2');

%http://blog.sina.com.cn/s/blog_50415f850101p0f9.html