cal = input('enter the caliber of the bullet');
cd = input('enter the drag coeficcient');
m1 = input('enter the mass of the bullet (grains)');
v0 = input('enter the muzzle velocity (feet per second)');
p = input('enter the air density (standard air density is .002377)');
w1 = input('enter the wind speed (feet per second)');
z1 = input('enter the angle from which the wind is coming from');

% these are the variables that make up a(drag force constants) and 
% b(wind force)
z = z1*(180/pi);
m = (m1/32)/0.000142857;
w = w1*1.46667;
P = .5*p*(w^2)*cd;
s = pi*(cal/24)^2;
fw = P*s;
b = fw*cos(z);
q = .5*p;
a = s*p*cd;

%this is for motion in the y direction
vty = ((m*(-32))/a)^.5;
tow = (m/(a*(-32)))^.5;
ty1 = linspace(0,.6);
for j = 1 : length(ty1); %switched from 1 to 0
    y1 = 0;
    ty = linspace(0,ty1(j));
    for i = 1:length(ty)
        vy(i) = (vty*tanh(ty(i)/tow))*-12;
        y1 = y1+vy(i)*(max(ty)/100);
        %need to figure out (change in t)
    end
    y(j) = y1;
end

%this is for motion in the x direction
vtx = ((fw)/a)^.5;
towx = ((m^2)/(a*-1*fw))^.5; %added in -1
tx1 = linspace(0,.6);
for k = 1 : length(tx1); %switched from 1 to 0
    x1 = 0;
        
    tx = linspace(0,tx1(k));
    for q = 1:length(tx);
        vx(q) = (vtx*tan(tx(q)/towx + atan(v0/vtx)))/3; 
        x1 = x1+(vx(q)*(max(tx)/100));
        %tx(q) for t?
        %need to figure out (change in t)
    end
    x(k) = x1;
end
figure;
plot(x,y, 'bo');

%velocity graphs
%velocity in the y
for i = 1 : length(ty1);
    vy(i) = (vty*tanh(ty1(i)/tow));
end
figure;
plot (ty1,vy,'bo');
%this is for velocity in the x direction

for q = 1 : length(tx1);
    vx(q) = (vtx*tan(tx1(q)/towx) + atan(v0/vtx));

end
figure;
plot(tx1,vx,'bo');