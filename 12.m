clear all
close all

t = 0:10;
f = 0.3;

sine = sin(2*pi*f*t);
cosine = cos(2*pi*f*t);

subplot(2,1,1)
plot(sine)
subplot(2,1,2)
plot(cosine)

[y Fs] = audioread('Kalimba.mp3', [1,200000]);

y(:,[1 2]) = y(:,[2 1]);

sound(y*4, Fs)
