function dbp = gen_dbp(t)
for i=1:800
    dbp(i)=85;
end
for i=801:1000
    dbp(i)=85+((70-85)/200)*(t(i)-801);
end