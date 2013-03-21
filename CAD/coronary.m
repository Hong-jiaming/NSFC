%-------------------%
% Define the Inputs %
%-------------------%

% Time, correspondes to Age 40 -- Age 90
t = [1:1000]';
age = [40:0.05:89.95]'; 


% Systolic Blood Pressure, input
sbp = gen_sbp(t); 
h1 = figure(1);
plot(age,sbp,'LineWidth',4);
legend('Systolic Blood Pressure (mmHg)');
print(h1,'-dpdf','SBP.pdf');


% Diastolic Blood Pressure, input
dbp = gen_dbp(t); 
h2 = figure(2);
plot(age,dbp,'LineWidth',4);
legend('Diastolic Blood Pressure (mmHg)');
print(h2,'-dpdf','DBP.pdf');


% Blood Glucose, input
bg = gen_bg(t); 
h3 = figure(3);
plot(age,bg,'LineWidth',4);
legend('Blood (Plasma) Glucose (mmol/L)');
print(h3,'-dpdf','BG.pdf');


%BMI, input
bmi = gen_bmi(t); 
h4 = figure(4);
plot(age,bmi,'LineWidth',4);
legend('BMI (kg/m*m)');
print(h4,'-dpdf','BMI.pdf');


% Compute the Output %
%y = gen_y(t);

a1 = 0.1065;
b1 = 0.02477;
c1 = 49.79;
y = a1*sin(b1*age+c1);
h5 = figure(5);
plot(age,y,'LineWidth',4);
legend('Framingham CHD Risk in 10 Years (extended to cover ages 40-90)');
print(h5,'-dpdf','FraminghamExtended.pdf');


% Estimate %
%h6 = figure(6);

sbp = sbp';
dbp = dbp';
bg = bg';
bmi = bmi';
% y = y';
u = [sbp dbp bg bmi]; % combine four inputs into one matrix

sbpe = sbp(1:2:end);
sbpv = sbp(2:2:end);

dbpe = dbp(1:2:end);
dbpv = dbp(2:2:end);

bge = bg(1:2:end);
bgv = bg(2:2:end);

bmie = bmi(1:2:end);
bmiv = bmi(2:2:end);

ue = [sbpe dbpe bge bmie];
uv = [sbpv dbpv bgv bmiv];

ye = y(1:2:end);
yv = y(2:2:end);

de = iddata(ye,ue,2);
dv = iddata(yv,uv,2);
de = detrend(de);
dv = detrend(dv);

%data = iddata(y,u,1);
%de = data(1:500); % data for estimation
%dv = data(500:1000); % data for validation

m = pem(de); % state-space model, order is automatically determined, using a prediciton error method

compare(dv,m);
%legend('validation data','model prediction');
%print(h6,'-dpdf','SSmodel.pdf');






