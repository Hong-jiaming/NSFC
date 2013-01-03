function bg = gen_bg(t)
for i=1:400
    bg(i)=5.5+((6.5-5.5)/400)*t(i);
end
for i=401:600
    bg(i)=6.5+((6.1-6.5)/200)*(t(i)-400);
end
for i=601:1000
    bg(i)=6.1;
end