clear;
clc;
close all;
load('n_chirping_birds.mat')
fs = 44100;
for i=1:40
% figure;
[S,cF,t]=melSpectrogram(n_chirping_birds{i},fs);
S(:,:,i) = 10*log10(S+eps);
% caxis([-160 -60])
% 
% hAxes = gca;
% hAxes.XRuler.Axle.LineStyle = 'none';  
% axis off
% colorbar('off')
% fname = 'C:\Users\ΜΑΡΙΑ ΣΙΔΕΡΙΔΟΥ\Desktop\mel_1D\mammals\';
% filename = strcat("dogs",int2str(i));
% saveas(gca, fullfile(fname, filename), 'png');

% close
end

% figure;
% 
% melSpectrogram(n_dogs{13},fs);
% caxis([-160 -60])
% 
% 
% title('Dog Mel Spectrogram');

