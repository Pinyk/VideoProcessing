[im,maap]=imread('D:\ѧϰ�ʼ�\��Ƶ������\�����-ʵ���\ͼƬ���ļ�\imageIndex.tif');

subplot(1,2,1);
imshow(im,maap);
title('ԭ����ͼ��');

bw_n=im2bw(im,maap,0.5);

subplot(1,2,2);
imshow(bw_n);
title('��ֵΪ0.5�Ķ�ֵͼ��');
figure;



for i=0:0.1:1
    bw_no=im2bw(im,maap,i);
    subplot(3,4,pplot(i));
    tittle=strcat('��ֵΪ',num2str(i));
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