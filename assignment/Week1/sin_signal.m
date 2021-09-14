clear;
clc;
f1=1000;
f2=3000;
A1=5;
A2=3;
fs=16000;
t=0:1/fs:0.01;
y1=A1*sin(2*pi*f1*t);
y2=A2*sin(1*pi*f2*t);
y3=y1+y2;

plot(t,y1);hold;
plot(t,y2);hold;
plot(t,y3);hold;

xlabel("t/sec");
ylabel("signal amplitude")

grid
matlabFFT=figure;
y3ph=fft(y3);
stem(abs(y3ph));





