%chebyschev high pass filter
clc;
clear all;
close all;
disp('Chebyschev High pass');
rp = input('Enter the passband ripple =(default:1)');
rs = input('Enter the stopband ripple =(default:20)');
w1 = input('Enter the passband frequency =(default:0.2*pi)');
w2 = input('Enter the stopband frequency =(default:0.3*pi)');
[n,wn] = cheb1ord(w1/pi,w2/pi,rp,rs);
[b,a] = cheby1(n,rp,wn,'high')
w = 0:0.01/pi:pi;
[h,om] = freqz(b,a,w);
m = 20*log10(abs(h));
an = angle(h);
subplot(2,1,1);
plot(om/pi,m);
subplot(2,1,1);
plot(om/pi,m);
title('Chebyschev High pass');
ylabel('Gain in dB');
xlabel('Normalised Frequency');
grid on;
subplot(2,1,2);
plot(om/pi,an);
xlabel('Normalised Frequency ');
ylabel('Phase in radians ');
grid on;
