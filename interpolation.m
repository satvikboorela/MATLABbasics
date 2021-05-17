clc;
clear all;
close all;
disp('17131A04L7');
N=input('enter the length of sequence:');
L=input('enter the sampling factor:');
n=0:1:N-1;
x=sin(2*pi*n/10)+sin(2*pi*n/5);
disp('the input sequence is:');
disp(x);

y=[zeros(1,L*N)];
m=1:1:N*L;
y([1:L:N*L])=x;
disp('the interpolated sequence is:');
disp(y);
subplot(2,1,1);
stem(n,x);
xlabel('samples in time');
ylabel('amplitude');
title('input sequence to be interpolatedted');

subplot(2,1,2);
stem(m-1,y);
xlabel('samples in time');
ylabel('amplitude');
title('up sampled output');