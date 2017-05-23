clear all; close all; clc;

%%
%First Part
freq=1;
Nperiod=10;


T= 0 : .001 : 100;
x=sin(2*pi*T*freq)
figure
plot(T,x)

fs=20;

x2=sin(2*pi*T*freq/fs)
figure
plot(T,x2)


%%
%Second Part
N=10;
abscissa=1:1:N;

%This signal is anticausal, the signal rely on the future 

y=zeros(N,1);
s=step(4,N);
figure
stem(s)
for i=1:1:N
    y(i)=(s(i) + s(i+1))/2;
end


stem(abscissa , y)

%This signal is Causal, using k-1 the signal rely on the past

y=zeros(N,1);
s=step(4,N);
figure
stem(s)
for i=2:1:N
    y2(i)=(s(i) + s(i-1))/2;
end


stem(abscissa , y2)

%%
%Exercise 2

%If input is bounded then the signal is stable because he is also bounded
N=10;
stem(prim(step(4,N),N,1))

%the system is stable because we are inputing a step

%%

stem(prim(Dirac(4,N),N,1))

%Accumulation of Dirac gives you a step

%This is stable, we input dirac and he stabilize at 1 and output is bounded
%at infinity

%%
stem(prim(Dirac(4,N),N,2))

%Accumulation using factor of 2 for the past state gives you exponential
%behaviour

%This is not stable, we input dirac, and the signal is not bounded at
%infinity because when signal tend to infinity he goes to initity (proper of exponential)

%%

stem(prim(Dirac(4,N),N,1/3))

%Accumulation using factor of 1/3(fraction) for the past state gives you
%invert exopential behaviour

%this signal is stable, it is an invert exponential inputin Dirac, in fact
%at infinity he is bounded and stabilize at value 0 (proper of invert exponential)

%%
%Exercise 3

%prove F(a) + F(b) = F(a+b)

xa =[0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0];
xb =[0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0];

N=19;
figure
stem(xa)
figure
stem(xb)
figure
stem(prim2(xa,N,3,2,1))
figure
stem(prim2(xb,N,3,2,1))

fa=prim2(xa,N,3,2,1)
fb=prim2(xb,N,3,2,1)

fc=fa+fb;
figure
stem(fc)

fab=prim2(xa+xb,N,3,2,1)

figure
stem(fab)

figure
stem(fc-fab)%eq1

%The proof of linearity and invarience is fa + fb = f(a+b)
%So with these computation, we can see that this system is linear and
%invarent because there is no difference between signal (see eq 1)


%%

xa =[0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0];
xb =[0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0];

N=19;%length of xa and xb

fa=prim3(xa,N,3,2,1)
fb=prim3(xb,N,3,2,1)

fc=fa+fb;
figure
stem(fc)

fab=prim3(xa+xb,N,3,2,1)

figure
stem(fab)

figure
stem(fc-fab)%eq1