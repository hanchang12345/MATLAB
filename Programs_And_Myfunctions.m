%% 
% for i=1:10
%     x=linspace(0,10,100); 
%     plot(x,sin(x+i));
%     print(gcf,'-deps',strcat('plot',num2str(i), 'ps'));
% 
% end
%%
% for i=1:10
%     x=linspace(0,10,100); 
%     plot(x,tan(x+i));
%     print(gcf,'-deps',strcat('plot',num2str(i), 'ps'));
%     
% end
%%
% if
a=6;
if rem(a,2)==1
    disp('奇数');
else
    disp('偶数');
end
%%
% Switch
input_num=5;
switch input_num
    case -1
        disp('negative 1');
    case 0
        disp('zero');
    case 1
        disp('positive 1');
    otherwise
        disp('other value');
end
%% while
% n=1;
% %prod(1:n)求n的阶乘，1e100是1*10^100
% while prod(1:n)<1e100
%     n=n+1;
% end
% disp(n) % display打印n

%使用while循环计算1到999的加和
sum=0;
a=1;
while a<1000
    sum=sum+a;
    a=a+1;
end
disp(sum);
disp(a);
%% for循环
for n=1:10
    a(n)=2^(2*n-1);
end
disp(a);
%% 计算程序运行的时间
% tic
% for ii=1:2000
%     for jj=1:2000
%         A(ii,jj)=ii+jj;
%     end
% end
% toc
% 

% tic
% A=zeros(2000,2000);
% for ii=1:size(A,1)
%     for jj=1:size(A,2)
%         A(ii,jj)=ii+jj;
%     end
% end
% toc

% 把A矩阵的数值赋给B矩阵，并把矩阵的负数改为正数
A=[1 2 3;4 5 6;-7 -8 -9];
B=[0 0 0;0 0 0;0 0 0];
for i=1:9
    B(i)=A(i);
end
for j=1:9
    if B(j)<=0
        B(j)=-1*B(j);
    end
end
%% 小技巧
% ; 不会打印在命令行窗口
% clear all 清除所有变量
% close all 关闭所有figure
% ... 换行输入
% Ctrl + c 强制中断
% 函数的保存的文件名必须和函数名一样



