clc;
clear all;
close all;
disp('17131A04L7')
x=input('enter the input sequence');
N=length(x);
for k=0:N-1
    y(k+1)=0;
for n=0:N-1
        p=exp(-j*2*pi*k*n/N);
        y(k+1)=y(k+1)+x(n+1)*p;
end
end
disp(y);
time=1:length(x);
subplot(3,1,1);
stem(time,x);
xlabel('time');
ylabel('amplitude');
title('input sequence');

subplot(3,1,2);
stem(time,real(y));
xlabel('time');
ylabel('amplitude');
title('real output');

subplot(3,1,3);
stem(time,imag(y));
xlabel('time');
ylabel('amplitude');
title('imaginary output');
