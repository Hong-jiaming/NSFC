function sbp = gen_sbp(t)
for i=1:200
    sbp(i)=120;
end
for i=201:800
    sbp(i)=120+((150-120)/600)*(t(i)-201);
end
for i=801:1000
    sbp(i)=150-((150-120)/600)*(t(i)-801);
end