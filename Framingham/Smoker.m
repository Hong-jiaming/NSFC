smoker=[
1
1
0
1
1
1
0
0
1
0
1
1
0
1
1
1
1
1
1
1
1
0
0
1
1
1
0
1
0
1
0
1
1
1
1
0
1
1
0
0
1
0
1
1
0
1
1
0
0
1
1
1
0
1
1
0
0
1
1
1
1
1
0
1
1
0
1
1
1
0
1
1
0
1
1
0
1
0
1
1
0
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
0
0
1
1
1
1
0
1
1
0
1
0
1
1
0
1
1
1
1
1
0
1
0
0
1
1
1
1
1
0
1
1
1
1
0
1
0
1
0
1
0
1
1
0
1
1
1
0
0
1
1
0
0
1
1
1
0
1
1
1
1
0
1
0
0
0
1
0
0
1
1
1
1
0
1
1
1
0
0
1
1
1
1
1
1
1
0
0
0
1
0
1
1
1
1
0
1
0
1
1
0
1
1
1
1
1
1
1
0
1
0
0
1];

for i=1:length(smoker)
    switch smoker(i)
        case 0
            ldlsix(i)=0;
            cholsix(i)=0;
        case 1
            ldlsix(i)=2;
            cholsix(i)=2;
    end
end
    
    
    
    
    
    