clear;
clc;
fs = 44100;
%%%%%%%%%%%%%%%%%%%% mammals %%%%%%%%%%%%%%
%cats
load('n_cats.mat')
for i=1:40
%figure;
audioIn = cats{i};

flatness = spectralFlatness(audioIn,fs);
subplot(2,1,1)
t = linspace(0,size(audioIn,1)/fs,size(flatness,1));
plot(flatness/max(flatness))
xlabel('Time (s)')
ylabel('Flatness')
mean_flat_cats(1,i)=mean(flatness);
end
subplot(2,1,2)
plot(cats{i}/max(cats{i}));
%dogs
load('n_dogs.mat')
for i=1:40
%figure;
audioIn = n_dogs{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_dogs(1,i)=mean(flatness);
end

%pigs
load('n_pigs.mat')
for i=1:40
%figure;
audioIn = n_pigs{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_pigs(1,i)=mean(flatness);
end 

%cows
load('n_cows.mat')
for i=1:40
%figure;
audioIn = n_cows{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_cows(1,i)=mean(flatness);
end

%sheeps
load('n_sheeps.mat')
for i=1:40
%figure;
audioIn = n_sheeps{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_sheeps(1,i)=mean(flatness);
end

%%%%%%%%%%%%% birds %%%%%%%%%%%%%%%%%%%%%%%%%%
%rosters
load('n_rosters.mat')
for i=1:40
%figure;
audioIn = n_rosters{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_rosters(1,i)=mean(flatness);
end

%hens
load('n_hens.mat')
for i=1:40
%figure;
audioIn = n_hens{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_hens(1,i)=mean(flatness);
end

%crows
load('n_crows.mat')
for i=1:40

audioIn = n_crows{i};

flatness = spectralFlatness(audioIn,fs);


mean_flat_crows(1,i)=mean(flatness);
end

%chirping_birds
load('n_chirping_birds.mat')
for i=1:40
%figure;
audioIn = n_chirping_birds{i};

flatness = spectralFlatness(audioIn,fs);

%t = linspace(0,size(audioIn,1)/fs,size(flatness,1));
%plot(t,flatness)
%xlabel('Time (s)')
%ylabel('Flatness')
mean_flat_chirping_birds(1,i)=mean(flatness);
end