%this program shows the change in a vector given different transformations
q = input('enter 1 for a, 2 for b, 3 for c, 4 for d, or 5 for e');
v = linspace(-6,6,50);


if q == 1
    t = 2*cos(v);
    w = 2*sin(v);
    s = .5*v;
    figure
    plot3(t,w,s);
end

if q == 2
    t = 2*(cos(v)-1);
    w = 2*sin(v);
    s = .5*v;
    figure
    plot3(t,w,s);
end

if q == 3
    t = 2*cos(v);
    w = 2*sin(v);
    s = 2*v;
    figure
    plot3(t,w,s);
end

if q == 4
    t = 2*cos(-v);
    w = 2*sin(-v);
    s = .5*(-v);
    figure
    plot3(t,w,s);
end

if q == 5
    t = 6*cos(v);
    w = 6*sin(v);
    s = .5*v;
    figure
    plot3(t,w,s);
end