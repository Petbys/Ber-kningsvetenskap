function [vt] = P17rk4(t,v)
a = 0;
b = -1;
vt = [0 1;b a]*v; %[0;sin(pi*t)];

end
