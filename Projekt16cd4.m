% projekt 1 problem 6 BV2, 2020
%
% Skiven av: Petter
%
% Lösa y_tt=b*y med CD2
% Sätt begynnelsedata till y=f, y_t=0. 

close all;

b= [-1, -100, -10000];

%k=1 ;          % Tidssteg
f=1;            % Begynnelsedata
T=10;            % Sluttid
N=floor(T/k);   % Antal steg

y=zeros(3,N+1);
t=0:k:T;
for i=1:3
    y(1,i)=f; % SÃ¤tt begynnelsedata
    y(2,i)=(1+k^2/2*b(i)*f);
end
% CD4 algoritmen
for i= 1:length(b)
    k = 1/sqrt(abs(b(i)))
    for n=2:N
        y(i,n+1)=-y(i,n-1)+2*(1+b(i)*k^2/2+b(i)^2*k^4/6)*y(i,n);
    end
end
tt=0:0.001:T;
yy= cos(10*tt);

figure(1)
plot(t,y(1,:),'bo',tt,yy)
%plot(t,u(1,:),'r')
xlabel('t')
ylabel('y');

figure(2)
plot(t,y(2,:),'bo',tt,yy)
%plot(t,u(1,:),'r')
xlabel('t')
ylabel('y');

figure(3)
plot(t,y(2,:),'bo',tt,yy)
xlabel('t')
ylabel('y');
