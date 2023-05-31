%% 绘图进阶
x = logspace(-1,1,100); %生成log的行向量，从10^-1到10^1，等分间隔为100
y = x.^2;
subplot(2,2,1); 
plot(x,y); 
title('Plot');
subplot(2,2,2); 
semilogx(x,y); %semilog？把？轴的坐标转化为log
title('Semilogx');
subplot(2,2,3); 
semilogy(x,y); 
title('Semilogy');
subplot(2,2,4); 
loglog(x, y); 
title('Loglog');
set(gca,'XGrid','on');
%% 双轴绘图  plotyy
x = 0:0.01:20;
y1 = 200*exp(-0.05*x).*sin(x);
y2 = 0.8*exp(-0.5*x).*sin(10*x);
% % 不建议使用 plotyy
% [AX,H1,H2] = plotyy(x,y1,x,y2);
% set(get(AX(1),'Ylabel'),'String','Left Y-axis')
% set(get(AX(2),'Ylabel'),'String','Right Y-axis')
% title('Labeling plotyy');
% set(H1,'LineStyle','--'); set(H2,'LineStyle',':');

figure;
yyaxis left;
plot(x,y1,'--b');
ylabel('LeftY-axis');
yyaxis right;
plot(x,y2,':');
ylabel('RightY-axis');
title('Labeling plotyy')
%%
% y = randn(1,1000);
% subplot(2,1,1);
% histogram(y,10);% 建议histogram函数
% title('Bins = 10');
% subplot(2,1,2);
% histogram(y,50);
% title('Bins = 50');
% 
% x = [1 2 5 4 8]; y = [x;1:5];
% subplot(1,3,1); bar(x); title('A bargraph of vector x');
% subplot(1,3,2); bar(y); title('A bargraph of vector y');
% subplot(1,3,3); bar3(y); title('A 3D bargraph');


% a = [10 5 20 30];
% subplot(1,3,1); pie(a);
% subplot(1,3,2); pie(a, [0,0,0,1]);
% subplot(1,3,3); pie3(a, [0,0,0,0]);
%  
% x = 1:100; theta = x/10; r = log10(x);
% subplot(1,4,1); polarplot(theta,r);% 使用polarplot函数
% theta = linspace(0, 2*pi); r = cos(4*theta); 
% subplot(1,4,2); polarplot(theta, r);
% theta = linspace(0, 2*pi, 6); r = ones(1,length(theta));
% subplot(1,4,3); polarplot(theta,r);
% theta = linspace(0, 2*pi); r = 1-sin(theta);
% subplot(1,4,4); polarplot(theta , r);

x = linspace(0, 4*pi, 40); y = sin(x);
subplot(1,2,1); stairs(y);
subplot(1,2,2); stem(y);
%% 八边形stop的图标
t =(1:2:15)*pi/8; 
% t=linspace(pi/8,17*pi/8,9);

x = sin(t); y = cos(t);
fill(x,y,'r'); axis square off;
text(0,0,'STOP','Color', 'w', 'FontSize', 80, ...
'FontWeight','bold', 'HorizontalAlignment', 'center');
%% 六边形的stop标识
t=(0:1:5)*pi/3;
x=sin(t);y=cos(t);
fill(x,y,'r');
axis square off;
text(-0.75,0,'STOP','Color','k','Fontsize',70);
%% wait
t=(0:1:3)*pi/2;
x=sin(t);y=cos(t);
fill(x,y,'y','EdgeColor','k','LineWidth',3);
text(-0.68,0,'WAIT','Color','k','FontSize',70,'FontWeight','bold');
axis square off;
%% 颜色【R G B】
%  0~1 或 0~255，ff=255
G=[46 38 29 24 13];
S=[29 27 17 26 8];
B=[29 23 19 32 7];
h=bar(1:5,[G' S' B'],'grouped','FaceColor','flat');
% h返回的是整个图的句柄
h(1).FaceColor='#ff0000';
% h(1).facecolor设置的是第一个的颜色
% 十六进制的颜色需要用 '#颜色代码'的方式来进行显示
% h(1).facecolor=[]这种形式只能是0到1之间来设置 rgb三元组
title('五个国家的奖牌数');
ylabel('奖牌数');
xlabel('国家');
legend('金牌','银牌','铜牌');
%% 
[x, y] = meshgrid(-3:.2:3,-3:.2:3); 
z = x.^2 + x.*y + y.^2; surf( x, y, z); box on;
set(gca,'FontSize', 16); zlabel('z'); 
xlim([-4 4]); xlabel('x'); ylim([-4 4]); ylabel('y');
colorbar;figure;
imagesc(z); axis square; xlabel('x'); ylabel('y');
%% 3D
x=0:0.1:3*pi;z1=sin(x);z2=sin(2*x);z3=sin(3*x);
y1=zeros(size(x));y3=ones(size(x));y2=y3./2;
p=plot3(x,y1,z1,'r',x,y2,z2,'b',x,y3,z3,'g');
p(1).LineWidth=3;p(2).LineWidth=3;p(3).LineWidth=3;
grid on;
xlabel('x');ylabel('y');zlabel('z');
legend('sin(x)','sin(2x)','sin(3x)');
xticks=0:pi/2:3*pi;
xticklabels('\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi');
% xtickformat('\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi');
%%
t=0:pi/50:10*pi;
x=sin(t);y=cos(t);z=2.*t;
plot3(x,y,z,'-k');
grid on;axis square;
%%
x=-3.5:0.2:3.5;y=-3.5:0.2:3.5;
[X,Y]=meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);
subplot(1,2,1);mesh(X,Y,Z);%生成框图，不填充
subplot(1,2,2);surf(X,Y,Z);%生成表面图，填充
%%
x=-2:0.2:2;y=-2:0.2:2;[X,Y]=meshgrid(x,y);Z=X.*exp(-X.^2-Y.^2);
clabel(contourf(Z,(-.45:.05:.45)));
set(gca,'Ytick',1:5:21);set(gca,'YTicklabel',{(-2:1:2)});
%% 
x = -3.5:0.2:3.5; y = -3.5:0.2:3.5;
[X,Y] = meshgrid(x,y); Z = X.*exp(-X.^2-Y.^2);
subplot(1,3,1); contour(Z,-.45:.05:.45); axis square;
subplot(1,3,2); [C,h] = contour(Z);
clabel(C,h); axis square;
subplot(1,3,3); contourf(Z); axis square;























