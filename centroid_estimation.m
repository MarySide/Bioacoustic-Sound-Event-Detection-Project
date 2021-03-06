clear;
clc;
close all;

load('n_hens.mat')
fs = 44100;
%cats
for i=1:40

audioIn = n_cats{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_cats(1,i)=mean(centroid );
end

%dogs
for i=1:40
% figure;
audioIn = n_dogs{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_dogs(1,i)=mean(centroid );
end

%pigs
for i=1:40
% figure;
audioIn = n_pigs{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_pigs(1,i)=mean(centroid );
end

%cows
for i=1:40
% figure;
audioIn = n_cows{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_cows(1,i)=mean(centroid );
end

%sheeps
for i=1:40
% figure;
audioIn = n_sheeps{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_sheeps(1,i)=mean(centroid );
end
%%%%%%%%%%%%%%%%%%  birds %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%roster
for i=1:40
% figure;
audioIn = n_rosters{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_rosters(1,i)=mean(centroid );
end

%hens
for i=1:40
% figure;
audioIn = n_hens{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_hens(1,i)=mean(centroid );
end

%crows
for i=1:40
% figure;
audioIn = n_crows{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_crows(1,i)=mean(centroid );
end

%chirping_birds
for i=1:40
% figure;
audioIn = n_chirping_birds{i};

centroid = spectralCentroid(audioIn,fs);

mean_centroid_chirping_birds(1,i)=mean(centroid );
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
csvwrite('centroid_sheep3.csv', centroid);