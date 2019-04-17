syms t x y
%normal way
a = t^4 + 2*t^3;
b = -(2 - t)^2 - (2-t)^2;
z = int(a,t,0,1) + int(b,t,1,2);
disp(z)
%with green's theorem
r = 2*x - 2*y;
dr = int(r,y,x^2,x);
ddr = int(dr,x,0,1);
disp(ddr)

if z == ddr
    disp("the equations are equal... QED")
else
    disp("you done messed up or green's theorem is false and your life is a lie")
end
