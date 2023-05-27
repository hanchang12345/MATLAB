x = linspace(0, 2*pi, 1000);
y = sin(x); h = plot(x,y); 
set(gca,'XLim',[0,2*pi]);
set(gca,'YLim',[-1.05,1.05]);
set(gca,'FontSize',15);
set(gca,'XTick',0:pi/2:2*pi);
%修改下标为π
set(gca, 'XTickLabel', {'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
%symbol字体已经不支持了，会变成方框
% set(gca,'FontName','symbol');
% set(gca,'XTickLabel', {'0', 'p/2', 'p', '3p/2', '2p'});
% 改线条
set(h,'LineWidth',1.5,'LineStyle','-','Color','k');
%delete(h),删除线条，但是对坐标轴的设置还在
%% 
x=rand(20,1); set(gca,'FontSize', 18);
plot(x,'-md','LineWidth', 2, 'MarkerEdgeColor', 'k',...
    'MarkerFaceColor', 'g','MarkerSize', 10);
xlim([1, 20]);
%%
t=linspace(1,2);
f=t.^2;
g=sin(2*pi*t);
h=plot(t,f,'-k',t,g,'o');
title('Mini Assignment #1');
set(h,'LineWidth',5,'MarkerFaceColor','b','MarkerSize',1, ...
    'MarkerEdgeColor','r' );
set(gca,'FontSize',10,'YTick',-1:1:4);
legend('t^{2}','sin(2\pi t)');
%% 多个图
x=linspace(1,2*pi);
y1=sin(x);
y2=exp(x);
figure;
plot(x,y1,'-k');
figure;
plot(x,y2,'.')
figure('Position',[200,200,640,480]);
%%
%axis equal:坐标轴刻度间距相等axis square:纵坐标轴整体长度相等,不要求间距相等
%axis equal total 图形和坐标轴相切
t = 0:0.1:2*pi; x = 3*cos(t); y = sin(t);
subplot(2, 2, 1); plot(x, y); axis normal
subplot(2, 2, 2); plot(x, y); axis square
subplot(2, 2, 3); plot(x, y); axis equal
subplot(2, 2, 4); plot(x, y); axis equal tight
saveas(gcf,'test01','pdf');


