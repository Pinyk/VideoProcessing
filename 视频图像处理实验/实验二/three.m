[im,maap]=imread('D:\学习笔记\视频大数据\高宇科-实验二\图片及文件\imageIndex.tif');

subplot(1,2,1);
imshow(im,maap);
title('原索引图像');

bw_n=im2bw(im,maap,0.5);

subplot(1,2,2);
imshow(bw_n);
title('阈值为0.5的二值图像');
figure;



for i=0:0.1:1
    bw_no=im2bw(im,maap,i);
    subplot(3,4,pplot(i));
    tittle=strcat('阈值为',num2str(i));
    imshow(bw_no);
    title(tittle);
end


function r=pplot(x)
if x==0
    r=1;
elseif x==1
    r=11;
else
    r=x*10+1;
end
end