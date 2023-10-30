%% gilipsies direct method

% Gillespies Algoritm för cirkadisk rytm
close all;clear all;
% parameterar
alfa_A =50; alfap_A =500; alfa_R =0.01;  alfap_R = 50; beta_A= 50; beta_R=5;
teta_A =50;  teta_R =100;
gamma_A =1;  gamma_R =1; gamma_C=2; delta_M_R=0.5;  delta_M_A= 10;
delta_A =1; delta_R=0.08;
p =[ alfa_A  alfap_A  alfa_R  alfap_R  beta_A  beta_R  teta_A  teta_R ...
  gamma_A  gamma_R  gamma_C  delta_M_R  delta_M_A  delta_A  delta_R]
NR=nr_vilar();
i = 1;
N = 10e7;
U = zeros(N,9);
x=1:9;
U0(x) = [ 0 0 1 0 1 0 0 0 0];
t = 0;
t_end = 100;
tiden = zeros(N,1);
while t<t_end
    w = prop_vilar(U0(x),p);
    a0=sum(w);
    pi=w/a0;
    c=cumsum(pi);
    r=find(c>rand(),1);   
    tau=-log(rand)/a0; 
    U0(x) = U0(x) + NR(r,:);
    t_int = 0:1:t_end;
    t_check = ones(1,t_end);
    if (t > t_int(i)) && (t_check(i)) 
        U(i,:)=U0(x);
        tiden(i) = t;
        t_check(i) = 0;
        i = i + 1;
    end
    t = t + tau;
end
figure(1)
plot(tiden,U(:,9),'ro',tiden,U(:,1),'bo')
legend('R','A')
title('Stokastisk model deltaR = ')
xlabel('t');    
ylabel('koncentration');


