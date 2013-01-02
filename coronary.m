%-------------------%
% Define the Inputs %
%-------------------%

% Time, correspondes to Age 40 -- Age 90
t = [1:1000]'; 

% Systolic Blood Pressure, input
sbp = gen_sbp(t); 
h1 = figure(1);
plot(t,sbp,'LineWidth',4);
legend('Systolic Blood Pressure (mmHg)');
print(h1,'-dpdf','SBP.pdf');

% Diastolic Blood Pressure, input
dbp = gen_dbp(t); 
h2 = figure(2);
plot(t,dbp,'LineWidth',4);
legend('Diastolic Blood Pressure (mmHg)');
print(h2,'-dpdf','DBP.pdf');

% Blood Glucose, input
bg = gen_bg(t); 
h3 = figure(3);
plot(t,bg,'LineWidth',4);
legend('Blood (Plasma) Glucose (mmol/L)');
print(h3,'-dpdf','BG.pdf');

% BMI, input
bmi = gen_bmi(t); 
h4 = figure(4);
plot(t,bmi,'LineWidth',4);
legend('BMI (kg/m*m)');
print(h4,'-dpdf','BMI.pdf');


% Compute the Output %
y = gen_y(t);
%for i = 1:1000
%    y(i) = 0.1*sbp(i) + 0.2*dbp(i) + 0.3*bg(i) + 0.4*bmi(i);
%end
h5 = figure(5);
plot(t,y,'LineWidth',4);
legend('output Y [0-1]');
print(h5,'-dpdf','Y.pdf');


% Estimate %
h6 = figure(6);

sbp = sbp';
dbp = dbp';
bg = bg';
bmi = bmi';
y = y';
u = [sbp dbp bg bmi]; % combine four inputs into one matrix

data = iddata(y,u,1);
de = data(1:500); % data for estimation
dv = data(500:1000); % data for validation

de = detrend(de);
m = pem(de); % state-space model, order is automatically determined, using a prediciton error method

dv = detrend(dv);
compare(dv,m);
%legend('validation data','model prediction');
print(h6,'-dpdf','model.pdf');


