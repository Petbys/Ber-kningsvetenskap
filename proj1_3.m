%% projekt 1
clear all
format long

%% begynnelsedata
T=10;    % Sluttid
k1=0.02;
k2=0.04;
k3=0.01;
t1 = 0:k1:T;
t2 = 0:k2:T;
t3 = 0:k3:T;
tt=0:0.01:T;

f=1;    % Begynnelsedata

%% analytisk lösning
an = zeros(1,length(tt));
an(1) = 1;
an = Proj1Analytic(tt);
%% numerisk lösning
v1 = zeros(2,length(t1));
v1(:,1) =[f;0];
v1 = RK4(k1,v1,T);


v2 = zeros(2,length(t2));
v2(:,1) =[f;0];
v2 = RK4(k2,v2,T)
%% fel och konvergens


qnamnare = log10 (norm( an(end) - v1(1,end)) / norm(an(end)-v2(1,end)))
qtalj = log10(k1/k2)
q = qnamnare/qtalj





%% plot
hold on
title('Plot över analytiska lösningen, RK4 och ODE45' )
plot(t1,v1(1,:));
plot(t2,v2(1,:));
plot(tt,an);
[t, y] = ode45(@(t,y) P17rk4(t,y), t1, v1(:,1));
plot(t1,y(:,1))

