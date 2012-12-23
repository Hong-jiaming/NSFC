% we don't have HDL data, yet
hdl=1.6*rand(length(patient_id),1);


for i=1:length(hdl)
    if(hdl(i)<0.9)
        ldlthree(i)=2;cholthree(i)=2;
    end;
    if(hdl(i)>=0.9 & hdl(i)<1.17)
        ldlthree(i)=1;cholthree(i)=1;
    end;
    if(hdl(i)>=1.17 & hdl(i)<1.56)
        ldlthree(i)=0;cholthree(i)=0;
    end;
    if(hdl(i)>=1.56)
        ldlthree(i)=-1;cholthree(i)=-2;
    end;
end

