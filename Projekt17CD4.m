% projekt 1 problem 7 BV2, 2020
%
% Skiven av: Petter
%
% Lösa y_tt=b*y med CD2
% Sätt begynnelsedata till y=f, y_t=0. 

close all;

b= [-1, -100, -10000];

k=1 ;          % Tidssteg
f=1;            % Begynnelsedata
T=100;            % Sluttid
N=floor(T/k);  % Antal steg

y= zeros(1,N+1);
En = zeros(1,N+1);
t=0:k:T;

y(1)=f; % SÃ¤tt begynnelsedata
y(2)=(1+k^2/2*b(1)*f);

En(1) = y(1)^2-b(1)*y(1)
En(2) = y(2)^2-b(1)*y(2)

% CD2 algoritmen
for n=2:N
    y(n+1)=-y(n-1)+2*(1+b(1)*k^2/2)*y(n);
    En(n+1) = (y(n+1))^2 - b(1)*y(n+1);
end

disp(['Energi vid t: ',num2str(En(T-k))])
tt=0:0.001:T;
yy= cos(10*tt);

figure(1)
plot(t,En,'b',tt,yy)
%plot(t,u(1,:),'r')
xlabel('t')
ylabel('y');
title('Mitt fjÃ¤rde ODE program');