load deer1.mat
r = 2; %row
pop = deer1(2, 6);
run = 3;%#of times loop is run
xw = 0;%current deer harvest
y = 0;%next deer harvest
percinc = 0;%percent increase
newval = 0;%population of next herd
r2 = 0;%next row
run2 = 0;
%this takes a known population, pop, and multiplies it by the percent
%increase of the harvest from year to year in order to estimate the
%population of deer.
while run < 63
    xw = deer1(r, 2);
    r2 = r + 1;
    y = deer1(r2, 2);
    percinc = y / xw;
    newval = percinc .* pop;
    deer1(r2, 4) = newval;
    pop = newval;
    r = r2;
    run2 = run + 1;
    run = run2;
end
rx = 62; %row to retrieve harvest from
popx = deer1(62, 6);
runx = 2;%#of times loop is run
xx = 0;%current deer harvest
yx = 0;%next deer harvest
percincx = 0;%percent increase
newvalx = 0;%population of next herd
rxx = 0;%next row to retrieve harvest from
run2x = 0;
%this takes a known population, pop, and multiplies it by the percent
%increase of the harvest from year to year in order to estimate the
%population of deer.
while runx < 63
    xx = deer1(rx, 2);
    rxx = rx - 1;
    yx = deer1(rxx, 2);
    percincx = yx / xx;
    newvalx = percincx * popx;
    deer1(rxx, 5) = newvalx;
    popx = newvalx;
    rx = rxx;
    run2x = runx + 1;
    runx = run2x;
end

ry = 3; %row to retrieve estimated pop from from
runy = 2;%#of times loop is run
xy = 0;%low end calculated pop
yy = 0;%high end calculated pop
ave = 0;%finds ave of calculated populations
newvaly = 0;%population of next herd
rxy = 0;%next row to retrieve harvest from
run2y = 0;
%this finds the average of the two estimated populations
while runy < 61
    xy = deer1(ry, 4);
    rxy = ry + 1;
    yy = deer1(ry, 5);
    ave = (yy + xy) / 2;
    deer1(ry, 6) = ave;
    ry = rxy;
    run2y = runy + 1;
    runy = run2y;
end
%according to the FWC between 2011 and 2017 the population of deer remains constant
deer1(67,6) = 675000;
deer1(66,6) = 675000;
deer1(65,6) = 675000;
deer1(64,6) = 675000;
deer1(63,6) = 675000;
deer1(1,6) = 47500;

%the data for registered hunting licenses is only good through 1958, this
%fills in the missing data with a fourier approximation of the line derived
%from the later points in the data

%old values for hunter registry
deer1(1,3) = 152796;
deer1(2,3) = 152796;
deer1(3,3) = 152796;
deer1(4,3) = 152796;
deer1(5,3) = 152796;
deer1(6,3) = 152796;
deer1(7,3) = 152796;
deer1(8,3) = 152796;

%the following code used a fourier analysis to approximate values, amount of hunters, missing
%in the 3rd column. The approxiumation was inacurate and could not be used

%t = 8; %row number
%t2 = 0;
%runq = 1;%run number
%run2q = 0;
%x = 1957; %year number
%xq = 0;
%variables from fourier series. These were previously obtainined from
%running the program and displaying f
%v = 0;
 %      a0 =  -3.984e+09;
  %     a1 =   1.226e+09;
   %    b1 =  -7.178e+09;
   %    a2 =   5.227e+09;
    %   b2 =   1.841e+09;
     %  a3 =  -1.694e+09;
   %    b3 =   3.036e+09;
    %   a4 =  -1.371e+09;
     %  b4 =  -1.111e+09;
   %    a5 =   5.295e+08;
   %    b5 =  -4.601e+08;
    %   a6 =   1.054e+08;
     %  b6 =   1.775e+08;
   %    a7 =  -3.792e+07;
   %    b7 =   1.371e+07;
    %   a8 =  -5.457e+05;
     %  b8 =  -3.914e+06;
      % w =    0.04351;
%while runq < 9
 %   xq = x - 1;
  %  t2 = t - 1;
   % run2q = runq +1;
    %v = (a0 + a1*cos(x*w) + b1*sin(x*w) + a2*cos(2*x*w) + b2*sin(2*x*w) + a3*cos(3*x*w) + b3*sin(3*x*w) + a4*cos(4*x*w) + b4*sin(4*x*w) + a5*cos(5*x*w) + b5*sin(5*x*w) + a6*cos(6*x*w) + b6*sin(6*x*w) + a7*cos(7*x*w) + b7*sin(7*x*w) + a8*cos(8*x*w) + b8*sin(8*x*w));
    %deer1(t,3) = v;
    %t = t2;
    %x = xq;
    %runq = run2q;
%end


rz = 1; %row #
runz = 1;%#of times loop is run
xz = 0;% # of deer harvested
yz = 0;% deer population
succ_rate = 0;%finds ave of calculated populations
rxz = 0;%next row to retrieve info from
run2z = 0;
%this finds the average of the two estimated populations
while runz < 69
    xz = deer1(rz, 2);
    rxz = rz + 1;
    yz = deer1(rz, 3);
    succ_rate = (xz / yz);
    deer1(rz, 7) = succ_rate;
    rz = rxz;
    run2z = runz + 1;
    runz = run2z;
end



rw = 1; %row
runw = 1;%#of times loop is run
xw = 0;%dear harvested
yw = 0;%deer pop
perc_herd_cul = 0;%percent of herd cultivated
rxw = 0;%next row to retrieve info from
run2w = 0;
%this finds the percent of the herd cultivated per year
while runw < 69
    xw = deer1(rw, 2);
    rxw = rw + 1;
    yw = deer1(rw, 6);
    perc_herd_cul = (xw / yw)*100;
    deer1(rw, 8) = perc_herd_cul;
    rw = rxw;
    run2w = runw + 1;
    runw = run2w;
end
q = input('to graph deer pop per year enter 1, to skip enter 0');
e = input('to graph the # of deer harvested per registered hunter per year enter 1, to skip enter 0');
f = input('to graph the percent of the herd cultivated per year enter 1, to skip enter 0');
if q == 1
line(deer1(:,1),deer1(:,6)) %graphs deer pop against year
xlabel('Deer Population')
ylabel('Year')
end
if e == 1
line(deer1(:,1),deer1(:,7)) %graphs success rate ( deer harvested per registered hunter)
xlabel('Deer Per Hunter')
ylabel('Year')
end
if f == 1
line(deer1(:,1),deer1(:,8)) %graphs the percent of the herd cultivated per year
xlabel('Percent of Herd Harvested')
ylabel('Year')
end
T =array2table(deer1,'VariableNames',{'Year' 'DeerHarvested' 'RegisteredHunters' 'EstDeerPop' 'EstDeerPop2' 'DeerPop' 'DeerPerHunter' 'PercOfHerdHardvested'});

disp(T)  
 