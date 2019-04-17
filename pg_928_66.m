%this program models the ocean floor with an equation of depth d = 250+
%30*x^2 + 50*sin((pi*y)/2). In the problem you are asked to model the
%system, find the depth at a given point, determine the steepness in the x
%and y direction and find the greatest rate of change given the position
x = linspace(0,2,40);
y = linspace(0,2,40);
[x, y] = meshgrid(x,y);
d = 250+ 30*x^2 + 50*sin((pi*y)/2);
mesh(x,y,d);
x1 = input('enter x coordinate (1)');
y1 = input('enter y coordinate (.5)');
d2 = 250+ 30*x1^2 + 50*sin((pi*y1)/2);
disp('depth');
disp(d2);
disp('x steepness');
xsteep = 60*x1;
disp(xsteep);
ysteep = 50*(pi/2)*cos((pi*y1)/2);
disp('y steepness');
disp(ysteep);
gradient = [xsteep, ysteep];
disp('vector direction of steepest change');
disp(gradient);
