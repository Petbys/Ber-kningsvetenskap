%% projekt 1
%%
clear all
k1=0.02;
k2=0.04;
k3=0.01;
format long
% Tidssteg
f=1;            % Begynnelsedata
T=1;    % Sluttid

N1 = floor(T/k1);
N2 = floor(T/k2);
N3= floor(T/k3);
t1 = 0:k1:T;
t2 = 0:k2:T;
t3 = 0:k3:T;

%En = zeros(N+1,1);
tt=0:0.01:T;
an = zeros(1,length(tt));
an(1) = 1;
an = Proj1Analytic(tt);
en1 = zeros(1,length(t1-2));
en2 = zeros(1,length(t2-2));
v1 = zeros(2,length(t1));
v1(:,1) =[f;0];

for n=1:N1
    w1=P17rk4(t1(n),v1(:,n));
    w2=P17rk4(t1(n)+k1/2,v1(:,n)+k1/2*w1);
    w3=P17rk4(t1(n)+k1/2,v1(:,n)+k1/2*w2);
    w4=P17rk4(t1(n)+k1,v1(n)+k1*w3);
    v1(:,n+1)=v1(:,n)+k1*(w1+2*w2+2*w3+w4)/6;
    %en1(n) = norm(an(n+1)-v1(:,n+1));
end
wt = v1(1,:)+v1(2,:);

v2 = zeros(2,length(t2));
v2(:,1) =[f;0];
for n=1:N2
    w1=P17rk4(t2(n),v2(:,n));
    w2=P17rk4(t2(n)+k2/2,v2(:,n)+k2/2*w1);
    w3=P17rk4(t2(n)+k2/2,v2(:,n)+k2/2*w2);
    w4=P17rk4(t2(n)+k2,v2(n)+k2*w3);
    v2(:,n+1)=v2(:,n)+k2*(w1+2*w2+2*w3+w4)/6;
    %en2(n) = norm(an(n+1)-v2(:,n+1));
end


% wt2 = v2(1,:)+v2(2,:);
% en1(end-1)
% en2

% en11 = mean(en1)
% en22 = mean(en2)
% norm(an(end)-v1(:,end))
% norm(an(end)-v2(:,end))
% qnamnare = log10(norm(an(end)-v1(:,end))/norm(an(end)-v2(:,end)))
% qtalj = log10(k1/k2)
% q = qnamnare/qtalj
% 
% wt = v1(1,:)+v1(2,:);


hold on
plot(t1,v1(1,:),'*');
plot(t2,v2(1,:),':');
plot(tt,an);
[t, y] = ode45(@(t,y) P17rk4(t,y), t1, v1(:,1));
plot(t1,y(:,1))

%En(1) = w(1)^2;


%w;
%En(T-k)
