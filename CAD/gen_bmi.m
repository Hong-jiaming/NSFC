function bmi = gen_bmi(t)
for i = 1:200
    bmi(i)=24;
end
for i=201:600
    bmi(i)=24 + ((23.5-24)/400)*(t(i)-200);
end
for i=601:800
    bmi(i)=23.5+((23-23.5)/200)*(t(i)-600);
end
for i=801:1000
    bmi(i)=23+((22-23)/200)*(t(i)-800);
end