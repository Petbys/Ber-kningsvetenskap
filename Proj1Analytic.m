%Proj1Analytic
function yout=Proj1Analytic(t)
yout=(1/10.*(exp(-t).*sin(10.*t)*(pi^4+pi^3-198*pi^2-99*pi+10201))+exp(-t).*cos(10.*t)*(pi^4-198*pi^2+2*pi+10201)-sin(pi.*t).*pi^2-2*pi.*cos(pi.*t)+101.*sin(pi.*t))/(pi^4-198*pi^2+10201);
end
