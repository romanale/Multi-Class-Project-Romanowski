syms y z x
f = @(x,y,z) y;
xmin = @(y) -sqrt(9 - y.^2);
xmax = @(y) sqrt(9 - y.^2);
ans1 = int(f,z,0,y.^2);
ans2 = int(ans1,x,xmin,xmax);
ans3 = int(ans2,y,0,3);
disp(ans3)