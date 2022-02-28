clear;
clc;
close all;
fs = 44100;
%%%%%%%%%%%%%%%%% mammals %%%%%%%%%%%%%%%%
%cats
load('n_cats.mat')
for i=1:40
%figure;
audioIn = n_cats{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_cats(1,i)=mean(rolloffPoint);
end

%dogs
load('n_dogs.mat')
for i=1:40
%figure;
audioIn = n_dogs{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_dogs(1,i)=mean(rolloffPoint);
end

%pigs
load('n_pigs.mat')
for i=1:40
%figure;
audioIn = n_pigs{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_pigs(1,i)=mean(rolloffPoint);
end

%cows
load('n_cows.mat')
for i=1:40
%figure;
audioIn = n_cows{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_cows(1,i)=mean(rolloffPoint);
end

%sheeps
load('n_sheeps.mat')
for i=1:40
%figure;
audioIn = n_sheeps{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_sheeps(1,i)=mean(rolloffPoint);
end

%%%%%%%%%%%%%%%%% birds %%%%%%%%%%%%%%%%%
%rosters
load('n_rosters.mat')
for i=1:40
%figure;
audioIn = n_rosters{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_rosters(1,i)=mean(rolloffPoint);
end

%hens
load('n_hens.mat')
for i=1:40
%figure;
audioIn = n_hens{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_hens(1,i)=mean(rolloffPoint);
end

%crows
load('n_crows.mat')
for i=1:40
%figure;
audioIn = n_crows{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);

mean_rofp_crows(1,i)=mean(rolloffPoint);
end

%chirping_birds
load('n_chirping_birds.mat')
for i=1:40
%figure;
audioIn = n_chirping_birds{i};

rolloffPoint = spectralRolloffPoint(audioIn,fs);
%t = linspace(0,size(audioIn,1)/fs,size(rolloffPoint,1));
%plot(t,rolloffPoint)
%xlabel('Time (s)')
%ylabel('Rolloff Point (Hz)')
mean_rofp_chirping_birds(1,i)=mean(rolloffPoint);
end