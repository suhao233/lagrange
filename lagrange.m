%��ֵ��
%lagrange��������ֵ
clc;
clear
close all;
f = @(x)sin(x);
x1=0:0.5:pi;%7���㣬6�β�ֵ����ʽ
for i=1:length(x1)
    y1(i)=f(x1(i));
end
%figure,plot(x1,y1,'.r');
assess_x=[0:0.1:pi];%��ֵ��
for k=1:length(assess_x)
    s=0;
for i=1:length(x1)
    t=1;
    for j =1:length(y1)
       if i~=j
           t=t.*(assess_x(k)-x1(j))./(x1(i)-x1(j));%lagrange������
       end
    end
    s=s+y1(i)*t;
end
assess_y(1,k)=s;
%������
error(1,k) = abs(assess_y(1,k)-f(assess_x(1,k)));
end
plot(assess_x,assess_y);
