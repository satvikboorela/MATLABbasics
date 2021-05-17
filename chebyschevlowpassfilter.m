%chebyschev lowpass filter
clc;
clear all;
close all;
disp('Chebyschev low pass');
rp = input('Enter the passband ripple =(default:1)');
rs = input('Enter the stopband ripple =(default:15)');
w1 = input('Enter the passband frequency =(default:0.2*pi)');
w2 = input('Enter the stopband frequency =(default:0.3*pi)');
%fs = input('Enter the sampling frequency =(default:10000)');
[n,wn] = cheb1ord(w1/pi,w2/pi,rp,rs);
[b,a] = cheby1(n,rp,wn)
w = 0:0.01:pi;
[h,om] = freqz(b,a,w);
m = 20*log10(abs(h));
an = angle(h);
subplot(2,1,1);
plot(om/pi,m);
title('chebyschev low pass');
ylabel('Gain in dB ');
xlabel('Normalised Frequency ');
grid on;
subplot(2,1,2);
plot(om/pi,an);
xlabel('Normalised Frequency ');
ylabel('Phase in radians ');
grid on;
