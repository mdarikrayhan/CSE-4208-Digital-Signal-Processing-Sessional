clc;
clear all;
close all;
N= input('enter the N point=');
xn= input('enter the input sequence x(n)='); 
Xk=fft(xn,N);
disp('N point DFT of x(n) is=');
disp(Xk);

figure(1);
n=0:1:length(xn)-1;
stem(n,xn);
xlabel('n');
ylabel('x(n)');
title('Original Signal');

figure(2);
k= 0:N-1;
stem(k,abs(Xk));
xlabel('k');
ylabel('x(k)');
title('Magnitute Spectrum');

figure(3);
stem(k,angle(Xk));
xlabel('k');
ylabel('<X(k)');
title('Phase Spectrum');