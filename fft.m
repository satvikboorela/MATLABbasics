clc;
close all;
clear all;
disp('17131A04j6');
N=input('enter the number of points in the dft:');
x=input('enter the input sequence:');
L=length(x);
if(N<L)
    disp('N must be greater than or equal to L');
else
y=fft(x,N)

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
end
