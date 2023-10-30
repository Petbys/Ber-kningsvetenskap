k = [1, 0.5, 0.1, 0.05];
b = -1
T = 10000
t = 0:k(1):T;
%analytiska
y = 0.5*exp(sqrt(b(1))*t)+0.5*exp(-sqrt(b(1))*t);

% rk4
w = zeros(2,length(t));
w(:,1) =[f;0];
E = RK4(k(1),w,T);
% En för rk4
%ERK = w(1,:).^2 - b*y.^2;

% cd4

D1=zeros(1,length(t));
D1= CD47(D1,b(1),k(1),t);
D2=zeros(1,length(t));
D2= CD4(D2,b(1),k(1),t);

% ECD = D1.^2-b*y.^2;
% hold on
% figure(1)
% plot(t,y)
% plot(t,D2)
% plot(t, w(1,:))
% figure(2)

%plot(t,ECD)
plot(t,E)

