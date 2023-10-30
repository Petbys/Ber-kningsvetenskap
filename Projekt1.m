%% projekt 1
%%
k=[0.04,0.02,0.01] ;          % Tidssteg
f=1;            % Begynnelsedata
T=1;    % Sluttid

N1=floor(T/k(1)) % Antal steg
N2=floor(T/k(2));
N3=floor(T/k(3));

t1 = 0:k(1):T
t2 = 0:k(2):T;
t3 = 0:k(3):T;

u1=zeros(N1+1,1);

u2=zeros(N2+1,1);
u3=zeros(N3+1,1);

u1(1)=f; % Sätt begynnelsedata
u2(1)=f;
u3(1)=f;
for n=1:(N1)
    u1(n+1) = u1(n) + P_13HL(n);
end

for n=1:(N2)
    u2(n+1) = u2(n) + P_13HL(n);
end

for n=1:(N3)
    u3(n+1) = u3(n) + P_13HL(n);
end
t3
u3'




% Top two plots
tiledlayout(3,1) % Requires R2019b or later
nexttile
plot(t1,u1');
nexttile
plot(t2,u2');
nexttile
plot(t3,u3');

% 
% for n=1:N
% a    w1=P_13HL(t(n),u(n));
%     w2=P_13HL(t(n)+k/2,u(n)+k/2*w1);
%     w3=P_13HL(t(n)+k/2,u(n)+k/2*w2);
%     w4=P_13HL(t(n)+k,u(n)+k*w3);
%     u(n+1)=u(n)+k*(w1+2*w2+2*w3+w4)/6;
% end

