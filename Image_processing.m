%% 自己实现的函数，需要一一遍历
I=imread('rice.png');
level=graythresh(I).*255;
[m, n, k]=size(I);
for i=1:m
    for j=1:n
        if I(i,j)>=level
            bw(i,j)=1;
        else
            bw(i,j)=0;
        end
    end
end
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(bw);
%% 使用编辑器的函数来进行
I = imread('rice.png');
bw = imbinarize(I);
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(bw);
%% 自己写的
I =imread('rice.png');
BG=imopen(I,strel('disk',15));
I2=imsubtract(I,BG);% 把BG从I上删去
bw1=imbinarize(I);
bw2=imbinarize(I2);
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(BG);
figure;
subplot(1,2,1);
imshow(bw1);
subplot(1,2,2);
imshow(bw2);
%% 
I=imread('rice.png');
BG=imopen(I, strel('disk', 15));
I2=imsubtract(I, BG); level=graythresh(I2); 
BW=imbinarize(I2, level); 
[labeled, ~]=bwlabel(BW, 8);
RGB_label=label2rgb(labeled); imshow(RGB_label);
%%
I=imread('rice.png'); 
BG=imopen(I, strel('disk', 15));
I2=imsubtract(I, BG); level=graythresh(I2); 
BW=imbinarize(I2, level); 
[labeled, numObjects]=bwlabel(BW, 8);
graindata = regionprops(labeled, 'basic');
graindata(51)
%%
I=imread('rice.png'); level=graythresh(I);
BG=imopen(I, strel('disk', 15));
I2=imsubtract(I, BG); BW=imbinarize(I2, graythresh(I2)); 
ObjI = bwselect(BW); imshow(ObjI);
% 回车显示选中的米粒
%%
x=linspace(0,2*pi,100);
y1=sin(2.*x);
y2=cos(2.*x);
yyaxis left;
plot(x,y1,'r-','LineWidth',3);
ylabel('y1=sin(2x)');
yyaxis right;
plot(x,y2,'b-.','LineWidth',3);
ylabel('y2=cos(2x)');
legend('sin(2x)','cos(2x)');
xticks(0:pi/2:2*pi);
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi'});
xlim([0 2*pi]);




