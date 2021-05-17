clc;
clear all;
close all;
disp('17131A04j6');
N=input('enter the length of sequence:');
M=input('enter the sampling factor:');
n=0:1:N-1;
x=sin(2*pi*n/20)+sin(2*pi*n/15);
disp('The input sequence is:');
disp(x);

m=1:1:N/M;
y=x(1:M:N);
disp('The output sequence is:');
disp(y);
subplot(2,1,1);
stem(n,x);
xlabel('samples in time');
ylabel('amplitude');
title('input sequence to be decimated');

subplot(2,1,2);
stem(m-1,y);
xlabel('samples in time');
ylabel('amplitude');
title('down sampled output');