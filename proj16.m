%problem 6
clear all

b= [-1, -100, -10000];
f=1;   
T=10;



%begynnelse värde CD2

% b1
k1 = 0.9*2/sqrt(abs(b(1)))
N = floor(T/k1)
t1=0:k1:T
y1=zeros(1,N+1);
y1(1) =f;
y1(2) =(1+k1^2/2*b(1)*f);
y1 = CD2(y1, k1,b(1),T)

%b2
k2 = 0.9*2/sqrt(abs(b(2)))
N = floor(T/k2)
t2=0:k2:T
y2=zeros(1,N+1);
y2(1) =f;
y2(2) =(1+k2^2/2*b(2)*f);
y2 = CD2(y2, k2,b(2),T)

%b3
k3 = 0.9*2/sqrt(abs(b(3)))
N = floor(T/k3)
t3=0:k3:T
y3=zeros(1,N+1);
y3(1) =f;
y3(2) =(1+k3^3/2*b(3)*f);
y3 = CD2(y3, k3,b(3),T)

tiledlayout(3,1)
ax1 = nexttile
plot(t1,y1)
title(ax1, 'b = -1')
ax2 = nexttile
plot(t2,y2)
title(ax2, 'b = -100')
ax3 = nexttile
plot(t3,y3)
title(ax3, 'b = -10000')

% % begynnelse värde CD4


% % lösning till CD4
% pos = 0
% e = []
% for i=[1.5,2.0]
% pos = pos + 1
% t = 0:i:T;
% y2=zeros(1,length(t));
% y2 = CD2(y2,b(1),i,t);
% hold on
% plot(t,y2,'bo')
% e(pos) = y2(T)
% 
% 
% end
% disp(e)
% title('CD4 k = 1.73,  b = -1')
% tt=0:0.001:T;
% %yy= cos(10*tt);
% yy = 0.5*exp(sqrt(b(1))*tt)+0.5*exp(-sqrt(b(1))*tt)
% plot(tt,yy)
% plot CD2
% 
% plot(t,y1)
% title('CD2 k = 2, b = -1')
% hold on
% plot CD4
% qnamnare = log10 (norm( yy(T) - e(2)) / norm(yy(T)-e(3)))
% qtalj = log10(0.05/0.025)
% q = qnamnare/qtalj



