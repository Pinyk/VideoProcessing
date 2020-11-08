%3. 原始lena_256x256.bmp图像加入均值为0，方差分别为10，30后的图像，采用3x3模板，针对加入噪声后的图像进行图像平滑处理
%显示“原始图像”、“含有噪声的原始图像”、“3x3邻域平均法的平滑图像(均值=0，方差=10)”和“3x3邻域平均法的平滑图像均值=0，方差=30)”。
a = imread('D:\学习笔记\视频大数据\高宇科-实验一\原图及视频\Lena_256x256.bmp'); 
b=imnoise(a,'gaussian',0,10);
c=imnoise(a,'gaussian',0,30);
subplot(321),imshow(a),title('原图像');
subplot(323),imshow(b),title('加噪声后图像1');
subplot(324),imshow(c),title('加噪声后图像2');