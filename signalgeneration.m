clc;
clear all;
x= -10:1:10;
for i=x
    if (i<0)
        a(11+i)=0;
        r(11+i)=0;
    else
        a(11+i)=1;
        r(11+i)=i;
    end
    if (i==0)
        b(11+i)=1;
    else
        b(11+i)=0;
        
    end
    ex(11+i)= exp(i) ;
    s= sawtooth(x);
end
figure (1)
subplot(3,2,1);
stem (x,a);
title("unit step signal");
subplot (3,2,2);
stem(x,b);
title("unit impulse signal");
subplot(3,2,3);
stem (x, r);
title("unit ramp signal");
subplot(3,2,4);
stem(x,ex);
title("exponential signal");
subplot(3,2,5);
stem(x,s);
title("saw tooth signal");
   
    