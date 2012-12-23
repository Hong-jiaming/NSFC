ldlsum=ldlone+ldltwo+ldlthree+ldlfour+ldlfive+ldlsix;
cholsum=cholone+choltwo+cholthree+cholfour+cholfive+cholsix;

for i=1:length(patient_id)
    
    % risk predicted by ldl points
    if(ldlsum(i)<=-3)
        ldlrisk(i)=0.01;
    elseif(ldlsum(i)>=14)
        ldlrisk(i)=0.56;
    end;    
    switch ldlsum(i)
        case {-2,-1}
            ldlrisk(i)=0.02;
        case 0
            ldlrisk(i)=0.03;
        case {1,2}
            ldlrisk(i)=0.04;
        case 3
            ldlrisk(i)=0.06;
        case 4
            ldlrisk(i)=0.07;
        case 5
            ldlrisk(i)=0.09;
        case 6
            ldlrisk(i)=0.11;
        case 7
            ldlrisk(i)=0.14;
        case 8
            ldlrisk(i)=0.18;
        case 9
            ldlrisk(i)=0.22;
        case 10
            ldlrisk(i)=0.27;
        case 11
            ldlrisk(i)=0.33;
        case 12
            ldlrisk(i)=0.40;
        case 13
            ldlrisk(i)=0.47;
    end
    
    
    % risk predicted by chol points
    if(cholsum(i)<=-1)
        cholrisk(i)=0.02;
    elseif(cholsum(i)>=14)
        cholrisk(i)=0.53;
    end;
    switch cholsum(i)
        case {0,1}
            cholrisk(i)=0.03;
        case 2
            cholrisk(i)=0.04;
        case 3
            cholrisk(i)=0.05;
        case 4
            cholrisk(i)=0.07;
        case 5
            cholrisk(i)=0.08;
        case 6
            cholrisk(i)=0.10;
        case 7
            cholrisk(i)=0.13;
        case 8
            cholrisk(i)=0.16;
        case 9
            cholrisk(i)=0.20;
        case 10
            cholrisk(i)=0.25;
        case 11
            cholrisk(i)=0.31;
        case 12
            cholrisk(i)=0.37;
        case 13
            cholrisk(i)=0.45;
      
    end
end

h1 = figure(1);
seq=[1:length(patient_id)];
plot(seq,ldlrisk,seq,cholrisk);
legend('10-year risk predicted by ldl points', '10-year risk predicted by chol points');
print(h1,'-dpdf','Framingham.pdf');

