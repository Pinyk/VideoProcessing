A=magic(256);
I=mat2gray(A);
imshow(I);
[X,map] = gray2ind(I);

disp(['����A����������=',class(A)]);
disp(['�Ҷ�ͼ��I����������=',class(I)]);
disp(['����ͼ��X����������=',class(X)]);A