function yt = P_13HL(t)
% a = -2
% b = -101
% f = 1
%g = sin(pi*t)
% lamda = [a/2 + sqrt(a^2 + 4*b)/2, a/2 - sqrt(a^2 + 4*b)/2]

yt =1/10*(exp(-1*t)*sin(10*t)*(pi^4+pi^3-198*pi^2-99*pi+10201))/(pi^4-198*pi^2+10201)+exp(-1*t)*cos(10*t)*(pi^4+-198*pi^2-99*pi+10201)/(pi^4-198*pi^2+10201)+ -1*(sin(pi*t)*pi^2 - 2*pi*cos(pi*t) + 101*sin(pi*t))/(pi^4-198*pi^2+10201);
end


%y(t) =1/10*(e^(-1*t)*sin(10*t)*(pi^4+pi^3-198*pi^2-99pi+10201)/(pi^4-198*pi^2+10201)+e^(-1*t)*cos(10*t)*(pi^4+-198*pi^2-99pi+10201)/(pi^4-198*pi^2+10201)+ -1*(sin(pi*t)*pi^2 - 2*pi*cos(pi*t) + 101*sin(pi*t)/(pi^4-198*pi^2+10201)