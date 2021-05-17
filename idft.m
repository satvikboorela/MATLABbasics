clc;
clear all;
close all;
disp('17131A04L7')
y=input('enter the input sequence');
N=length(y);
x=zeros(1,N);
for n=0:N-1
    x(n+1)=0;
for k=0:N-1
        p=exp(j*2*pi*k*n/N);
        x(n+1)=x(n+1)+(y(k+1)*p/N);
end
end
disp(x);
time=1:length(y);
subplot(2,2,1);
stem(time,real(y));
xlabel('time');
ylabel('amplitude');
title('input sequence');

subplot(2,2,2);
stem(time,imag(y));
xlabel('time');
ylabel('amplitude');
title('input sequence');

subplot(2,2,3);
stem(time,real(x));
xlabel('time');
ylabel('amplitude');
title('real output');

subplot(2,2,4);
stem(time,imag(x));
xlabel('time');
ylabel('amplitude');
title('imaginary output');