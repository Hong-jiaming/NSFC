ldl=[
4.18
1.9
1.67
3.37
3.09
3.08
1.45
2.88
2.93
1.39
2.66
3.26
1.63
3.67
3.18
2.7
1.56
1.57
1.68
2.26
3.2
3.44
5.04
1.49
2.8
3.19
2.59
1.19
2.37
1.2
3.09
3.55
2.24
2.86
3.29
2
4.33
2.31
2.18
3.29
2.24
2.62
2.14
4.2
2.44
1.62
3.26
1.63
1.35
3.7
1.42
3.37
4.41
2.55
1.81
2.91
2.59
2.45
1.25
2.86
3.03
1.5
2.01
2.71
1.3
1.05
1.72
2.41
2.31
3.55
3.27
2.04
2.66
1.55
2.97
1.97
3.53
1.52
1.92
3.15
1.19
3.05
1.81
4.17
1.44
3.03
2.02
3.18
1.29
3.88
3.33
2.37
3.55
1.39
3.41
1.37
2.25
1.39
1.9
1.96
2.13
1.81
2.93
2.19
1.36
2.68
1.7
2.85
2.62
2.39
2.84
5.26
2.66
3.68
2.66
2.55
3
2.8
1.32
5.79
2.59
1.55
1.69
1.88
2.76
1.91
2.06
2.51
1.74
2.09
2.43
2.13
3.28
2.4
1.41
1.58
1.45
3.3
0.93
1.05
4.28
1.32
2.78
4.14
1.85
2.05
2.01
1.5
3.47
3.48
2.14
2.83
3.49
3.05
2.46
1.84
2.79
2.77
3.14
1.86
3.08
4.41
2.63
2.84
3.6
1.72
3.15
3.24
2.96
3.24
1.93
2.05
2.02
2.36
1.75
3.67
1.4
1.37
2.19
2.94
5.16
3.1
3.36
2.26
1.62
5.1
1.8
2.14
1.21
1.92
1.86
1.91
2.63
2.21
2.52
2.38
2.36
3.56
2.75
1.77
4.57
2.24
1.01
2.47
2.5
3.5
3.35
2.06
3.74
3.36
3.3
2.3];

for i=1:length(ldl)
    if(ldl(i)<2.6)
        ldltwo(i)=-3;
    end;
    if(ldl(i)>=2.6 & ldl(i)<4.15)
        ldltwo(i)=0;
    end;
    if(ldl(i)>=4.15 & ldl(i)<4.92)
        ldltwo(i)=1;
    end;
    if(ldl(i)>=4.92)
        ldltwo(i)=2;
    end;
end
