function [vt] = P17rk4(t,v)
a = -2;
b = -101;
vt = [0 1;b a]*v +[0;sin(pi*t)];

end
