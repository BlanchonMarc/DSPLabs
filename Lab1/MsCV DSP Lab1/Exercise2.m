clear all;
close all;
clc;
%%
%2.1
observation=1000;
distrib=randn([1 observation]);
figure
plot(distrib)
figure
hist(distrib,100) 

observation=10000;
distrib2=randn([1 observation]);
figure
plot(distrib2)
figure
hist(distrib2,100)

%We can see that the gaussian noise goes from approximately 3 to -3 using
%the histogram, whatever the number of points.

%%
%2.2
observation=1000;
distrib3=rand([1 observation]);
figure
plot(distrib3)
figure
hist(distrib3,100) 

observation=10000;
distrib4=rand([1 observation]);
figure
plot(distrib4)
figure
hist(distrib4,100) 

%The uniform distribution noise gives us some kind of plane noise, there is
%not shape of gaussian or anything.


%%
%2.3

figure
autocor=xcorr(distrib); % Gaussian Noise Auto correlation
stem(autocor)


figure
autocor=xcorr(distrib3); % Uniform Noise
stem(autocor)

%We are comparing a signal to itself, so there is a spike for the gaussian
%because at the top point of the gaussian then the signals are really
%similar
%This is exactly the same with uniform, when we are to the center then it's
%really similar but it is similar is almost all points hat's why we have
%this king of triangle


%%
%2.4

s1=round(rand(1,50));
s2=round(rand(1,50));
s3=round(rand(1,50));

s=zeros([1,300]);


for i = 1 : 50
    s(i)=s1(i)
    s(i+100)=s2(i)
    s(i+200)=s3(i)
end

figure
plot(s)

%%
figure
autocor=xcorr(s,s1);
stem(autocor)

%%
figure
autocor=xcorr(s,s2); 
stem(autocor)
%%
figure
autocor=xcorr(s,s3); 
stem(autocor)

%For this exercise, we see that the autocorrelation gives a spike when you
%are selecting the good signal , so it will display us the spike for the
%signal.
%Example when we autocorrelate s to S& then the spike will be centered on
%the s1 par of the signal S.