%��Ƶ�Ķ�ȡ
obj=VideoReader('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\viptraffic.avi');
disp(obj.FrameRate);
%��Ƶ֡����
numFrames=obj.NumberOfFrames;
%��֡��ȡ��Ƶ�������ţ�������ͼƬ����
for i=1:numFrames
     frame = read(obj,i);
     disp('��ǰ��֡����'),disp(i);
     %����֡
     path=strcat('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭ��Ƶ֡\',num2str(i),'.jpg');
     imwrite(frame,path,'jpg');
     imshow(frame);
     title('ԭʼ��Ƶ');
end
%�����հ���Ƶ�ļ�����
aviobj=VideoWriter('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭͼ����Ƶ\viptraffic_gray.avi');
aviobj.FrameRate=15;
open(aviobj)
%ÿ֡ͼƬת��Ϊ�Ҷ�ͼƬ������
for i=1:numFrames
     path=strcat('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\ԭ��Ƶ֡\',num2str(i),'.jpg');
     I=rgb2gray(imread(path));%ת���ĻҶ�ͼ��
     grayPath=strcat('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ��һ\�����֡\',num2str(i),'.jpg');
     imwrite(I,grayPath,'jpg');
     writeVideo(aviobj,I); %д����Ƶ
end
close(aviobj);