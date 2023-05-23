%% 注意事项：
% 1.不需要加分号
% 2. 运行时必须选中需要的变量才能右键运行，否则会是用未修改的变量
% 3.MATLAB的下标从1开始,引用用{}，不用[]

%% 1.注释使用两个%%，会有横线，识别最近的%%，会分块
% 一个%也可以注释，但是不会有横线
%% 2.变量名不能超过63位，而且只能用字母，下划线，数字组成。
%    而且变量名的第一个符号只能是字母
%   变量名应该简洁易懂，直接读出实际意义
%% 3.数字运算
% 加法、减法、乘法、除法
%% 4.字符和字符串
% s='a'
s = 'a';
% 返回ASCII码,右键执行时需要选上内容，否则会未定义
abs(s)
% char(ASCII)就是打印ASCII的内容
char(97)
% num2str(65)就是65，用 = 赋值也可以
num2str(68)
% 字符串
str='I Love MatLab && IT.'
% 计算字符串长度
length(str)
% 显示后面的变量是什么类型的变量
doc str

%% 5.矩阵
% 1. 语法：变量名=[矩阵内容1;矩阵内容2……]
%    矩阵的行用;分隔，矩阵一行的内容用空格或 ,分隔
A=[1,2,3;4 5 6;7 8 9]
% 2.矩阵的转置（行变列，列变行）
%   语法：变量名=矩阵名'
B=A'
% 3.矩阵变为一列（列+列）
%   语法：变量名=矩阵名(:)
C=A(:)
% 4.矩阵求逆
% 语法：变量名=inv(矩阵名) 矩阵必须为方阵
D=inv(A)
% 5.生成全0矩阵
%   语法：变量名=zeros(行数,列数,维数)
E=zeros(10,5,3)
% 生成随机矩阵
% 控制维数随机的语法：变量名(;;要控制的维数)=生成的方法
% rand生成均匀分布的伪随机数。分布在0到1之间
%   主要语法：1.rand(m,n)生成m行n列的均匀分布的伪随机数
%             2.rand(m,n,'double')生成指定精度的均匀分布的伪随机数
%                参数也可以是single
%             3.rand(RandStream,m,n)利用指定的RandStream生成伪随机数
E=rand(5,5)
E=rand(5,5,'single')
% randn生成标准正太分布（均值=0，方差=1）的伪随机数
%   主要语法：1.randn(m,n)生成m行n列的均匀分布的伪随机数
%             2.randn(m,n,'double')生成指定精度的均匀分布的伪随机数
%                参数也可以是single
%             3.randn(RandStream,m,n)利用指定的RandStream生成伪随机数
E=randn(5,5)
% randi生成均匀分布的伪随机整数
%  主要语法：randi（iMax）在开区间（0，iMax）生成均匀分布的伪随机整数
%            randi（iMax，m，n）在开区间（0，iMax）生成mXn型随机矩阵
%            r = randi([iMin,iMax],m,n)在开区间（iMin，iMax）生成mXn型随机矩阵
randi(5,5,5)
randi([1,5],5,5)
%% 6.元胞数组
%   语法 变量名=cell(行数，列数)，生成的是一个类
A=cell(1,6)
%   生成对角线元素都为1，其余都是0的n阶矩阵
%   语法：eye(阶数)
A{2}=eye(3)% 生成的矩阵放在元胞数组A的第二个元素里，是{}引用
% 幻方 magic -> 主线，副线和对角线的和是相等的
%   语法：magic(阶数)
A{3}=magic(5)%把生成的5阶幻方放在元胞数组A的第三个元素里
%% 7.结构体
books=struct('name',{{'douluodalu','zizhuan'}},'price',[30,40])
books.name %提取name属性 提取的是元胞属性
books.name(1)% 提取name的第一个属性，是元胞属性，带引号
books.name{1}% 提取name的第一个属性，是元胞属性的内容，不带引号


%% 1.矩阵操作
% 1.定义：A={1,2,3;4,5,6;7,8,9}生成的是元胞数组
% 2.      A=[1,2,3,4;5,6,7,8]生成的是矩阵
% 2.等差矩阵 步长不可省
%   语法：变量名=起点:步长:终点
B=1:2:9
% repmat的含义：把B矩阵横着重复n次，竖着重复m次
%   语法：变量名=repmat(重复的矩阵，m，n)
C=repmat(B,3,2)
%生成m行n列的全零矩阵
D=zeros(4,4)
%生成m行n列的全一矩阵
E=ones(4,4)
%% 2.矩阵的四则运算
A=[1 2 3 4;5 6 7 8]
B=[1 1 2 2;2 2 1 1]
% 加法（对应加法）
C=A + B
%减法（对应减法）
D=A-B
%乘法（A的行数=B的列数必须相同）错误使用  *  内部矩阵维度必须一致。
E= A * B'
%对应相乘加 .
F=A.*B
%除法（相当于乘以B的逆）
G=A/B
%G=A*inv(B)%矩阵必须为方阵
% 对应项相除
H=A./B
%% 3.矩阵下标
A=magic(5)%必须是n阶的
B=A(3,3)%取出A第3行第三列的数
C=A(3,:)%:代表全部，取出第三行的全部
D=A(:,4)%取第四列
%find
%find会返回满足条件的索引值
%m是行，n是列
[m,n]=find(A>20)%返回的索引值放在[m,n]里

%% 循环
% 1.for循环
% 2.while循环

% 1.for循环
% % 例子： 求1^2+2^2+3^2+4^2+5^2==55
sum = 0
% 语法：for 循环变量 = 初始值:步长:循环次数
% 步长为1时可以省略
for i=1:1:5
    sum=sum+i^2
end
% 2.while循环
%while 条件表达式
%       语句……
% end

% 1+2+3+4+5+6+7+8+9+10
sum=0
i=0
while i<=10
    sum =sum + i
    i=i+1
end
% for循环求阶乘
sum=0
i=0
j=0
for i=1:5
    p=1
    for j=1:i
        p=p*j
    end
    sum=sum+p
end
% 9*9乘法表
for i=1:9
    j=1
    for j=1:9
      a(i,j)=i.*j
    end
end
%% 分支结构-》都有 end
%1.if 条件判别式 
%       语句……
%  end
%2.if 条件判别式1
%       语句1
%   else
%       语句2
% end
%3.Switch ……case ……end结构
%   switch 表达式（数值或字符串）
%       case 数值或字符串1
%               语句体1
%       case 数值或字符串2
%               语句体2
%        otherwish 
%               语句体 n
%       end
%% MATLAB基本绘图操作
%%
% 1.二维平面绘图
% 坐标x y
x =0:0.01:2*pi;  %定义x坐标为0到2pi的间距为0.1的点
y=sin(x);       %定义y坐标为关于x的sin函数
figure          %建立一个幕布
plot(x,y)       %描点
title('y=sin(x)') %取一个标题
xlabel('x')     %给x取一个标签
ylabel('sin(x)')%给y取一个标签
xlim([0 2*pi])  %限定x坐标的范围。使得图线的边缘重合
%颜色选项：
%红色：r  绿色：g  蓝色：b 黄色：y
%粉红色：m 青色：c 白色：w 黑色：k
%线型选项：
%线型：    符号：     实例：
%实线        -         ————
%虚线        --        - - - - -  
%冒号线       :        … … … …
%点划线       -.       — - — - — 
x=0:0.01:20
y1 = 200*exp(-0.05*x).*sin(x)
y2 = 0.8*exp(-0.5*x).*sin(10*x)
figure
[AX,H1,H2]=plotyy(x,y1,x,y2,'plot')
set(get(AX(1),'Ylabel'),'String','Slow Decay')
set(get(AX(2),'Ylabel'),'String','Fast Decay')
xlabel('Time(\musec)')
title('Multiple Decay Rates')
set(H1,'LineStyle','--')
set(H2,'LineStyle',':')
%% 2.三维立体绘图
% 定义t坐标
t=0:pi/50:10*pi
plot3(sin(t),cos(t),t)% 自动产生幕布，x y z
%设置坐标标签
xlabel('sin(t)')
ylabel('cos(t)')
zlabel('t')
% hold on 是绘制未完成，需要继续绘制
% hold off 是绘制已完成
grid on %加上网格线 
axis square %限制图像的大小
%% 3.图形的保存与导出
% 在文件里可以保存文件
% 在编辑里可以复制图片
% 文件的导出设置里可以修改图形的大小和设置
%%
[x,y,z]=peaks(30)
mesh(x,y,z)
grid on
%%图形窗口的分割
% subplot(行，列，位置)
x=linspace(0,2*pi,60)% x从零开始到2pi，生成60个等间距的行向量
subplot(2,2,1)% 把图形划分为两行两列，设置第一个图形
plot(x,sin(x)-1)% 创建Y中数据对x中的对应值的二维曲线
title('sin(x)-1')
axis([0,2*pi,-2,0])% 设置坐标轴的范围和纵横比，x从0到2*pi，y从-2到0
subplot(2,1,2)% 设置为2行1列，设置第二个图
plot(x,cos(x)+1)
title('cos(x)+1')
axis([0,2*pi,0,2])
subplot(4,4,3)% 设置整个幕布为4行4列，设置第三块区域
plot(x,tan(x))
title('tan(x)')
axis([0,2*pi,-40,40])
subplot(4,4,8)
plot(x,cot(x))
title('cot(x)')
axis([0,2*pi,-35,35])
%% 双坐标轴
x=linspace(0,10);
y1=sin(3*x);
y2=sin(3*x).*exp(0.5*x);
yyaxis left 
plot(x,y1,'k')
title('sin(x)')
yyaxis right
plot(x,y2,'r')
 title('cos(x)')
