clc;
close all;
clear all;
disp('17131A04j6');
N=input('enter the number of points in the idft:');
y=input('enter the input sequence:');
L=length(y);
if(N<L)
    disp('N must be greater than or equal to L');
else
x=ifft(y,N)
time=1:length(y);
subplot(2,2,1);
stem(time,real(y));
xlabel('time');
ylabel('amplitude');
title('real of input sequence');
subplot(2,2,2);
stem(time,imag(y));
xlabel('time');
ylabel('amplitude');
title('imag of input sequence');

subplot(2,2,3);
stem(time,real(x));
xlabel('time');
ylabel('amplitude');
title('real output of ifft');

subplot(2,2,4);
stem(time,imag(x));
xlabel('time');
ylabel('amplitude');
title('imaginary output of ifft');
end
