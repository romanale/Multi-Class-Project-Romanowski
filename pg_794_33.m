%finds intersection between two given lines and the angle between them
syms t s real;
y = 3;
y2 = 2*s + 3;
s2 = solve( y == y2, s);
z = -t + 1;
z2 = s2 + 1;
t2 = solve( z == z2, t);
x = 4*t2 + 2;
x2 = 2*s2 + 2;
z1 = -t2 + 1;
if x == x2
    disp([ x y z1 ]);
else disp('no intersection')
end
u = [ 4 0 -1 ];
v = [2 2 1 ];
theta = acosd( abs(dot(u,v)) / (abs(norm(u)) * abs(norm(v)) ));
disp(theta);
    

