%视频的读取
obj=VideoReader('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\viptraffic.avi');
disp(obj.FrameRate);
%视频帧总数
numFrames=obj.NumberOfFrames;
%逐帧读取视频，并播放，并保存图片序列
for i=1:numFrames
     frame = read(obj,i);
     disp('当前播帧数：'),disp(i);
     %保存帧
     path=strcat('D:\学习笔记\视频大数据\高宇科-实验一\原视频帧\',num2str(i),'.jpg');
     imwrite(frame,path,'jpg');
     imshow(frame);
     title('原始视频');
end
%创建空白视频文件对象
aviobj=VideoWriter('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\viptraffic_gray.avi');
aviobj.FrameRate=15;
open(aviobj)
%每帧图片转换为灰度图片并保存
for i=1:numFrames
     path=strcat('D:\学习笔记\视频大数据\高宇科-实验一\原视频帧\',num2str(i),'.jpg');
     I=rgb2gray(imread(path));%转换的灰度图像
     grayPath=strcat('D:\学习笔记\视频大数据\高宇科-实验一\处理后帧\',num2str(i),'.jpg');
     imwrite(I,grayPath,'jpg');
     writeVideo(aviobj,I); %写入视频
end
close(aviobj);