clc;
clear;
load('n_cats.mat')
load('n_chirping_birds.mat')
load('n_cows.mat')
load('n_crows.mat')
load('n_dogs.mat')
load('n_hens.mat')
load('n_pigs.mat')
load('n_rosters.mat')
load('n_sheeps.mat')


fs=44100;
%%%%%%%%%%% ZCR mammals %%%%%%%%%%%%%%%
for i =1:40
    zcr_cats(i,1)=zcr(n_cats{i});
end
for i =1:40
    zcr_dogs(i,1)=zcr(n_dogs{i});
end
for i =1:40
    zcr_pigs(i,1)=zcr(n_pigs{i});
end
for i =1:40
    zcr_cows(i,1)=zcr(n_cows{i});
end
for i =1:40
    zcr_sheeps(i,1)=zcr(n_sheeps{i});
end
%%%%%%%%%%%%%%%%% ZCR birds %%%%%%%%%%%%%%%%%%%
for i =1:40
    zcr_rosters(i,1)=zcr(n_rosters{i});
end
for i =1:40
    zcr_hens(i,1)=zcr(n_hens{i});
end
for i =1:40
    zcr_crows(i,1)=zcr(n_crows{i});
end
for i =1:40
    zcr_chirping_birds(i,1)=zcr(n_chirping_birds{i});
end


m1=mean(zcr_cats);
s1 = std(zcr_cats);

m2=mean(zcr_dogs);
s2=std(zcr_dogs);

m3=mean(zcr_pigs);
s3=std(zcr_pigs);

m4=mean(zcr_cows);
s4=std(zcr_cows);

m5=mean(zcr_sheeps);
s5=std(zcr_sheeps);

m6=mean(zcr_rosters);
s6=std(zcr_rosters);

m7=mean(zcr_hens);
s7=std(zcr_hens);

m8=mean(zcr_crows);
s8=std(zcr_crows);

m9=mean(zcr_chirping_birds);
s9=std(zcr_chirping_birds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%  mfccs and zcr %%%%%%
for i=1:40
mcoeffs_cats(14,i)=zcr_cats(i);
end

for i=1:40
mcoeffs_chirping_birds(14,i)=zcr_chirping_birds(i);
end
for i=1:40
mcoeffs_cows(14,i)=zcr_cows(i);
end
for i=1:40
mcoeffs_crows(14,i)=zcr_crows(i);
end
for i=1:40
mcoeffs_dogs(14,i)=zcr_dogs(i);
end
for i=1:40
mcoeffs_hens(14,i)=zcr_hens(i);
end
for i=1:40
mcoeffs_pigs(14,i)=zcr_pigs(i);
end
for i=1:40
mcoeffs_rosters(14,i)=zcr_rosters(i);
end
for i=1:40
mcoeffs_sheeps(14,i)=zcr_sheeps(i);
end
%%%%%%%%%  mfccs and zcr and 4 formants     %%%%%%
for i=1:40
mcoeffs_cats([15:18],i)=formants4cats(:,i);
end
for i=1:40
mcoeffs_dogs([15:18],i)=formants4dogs(:,i);
end
for i=1:40
mcoeffs_pigs([15:18],i)=formants4pigs(:,i);
end
for i=1:40
mcoeffs_cows([15:18],i)=formants4cows(:,i);
end
for i=1:40
mcoeffs_sheeps([15:18],i)=formants4sheeps(:,i);
end
for i=1:40
mcoeffs_rosters([15:18],i)=formants4rosters(:,i);
end
for i=1:40
mcoeffs_hens([15:18],i)=formants4hens(:,i);
end
for i=1:40
mcoeffs_crows([15:18],i)=formants4crows(:,i);
end
for i=1:40
mcoeffs_chirping_birds([15:18],i)=formants4chirping_birds(:,i);
end

%%%%%%%%%%%%%%%  mfccs and zcr and 4 formants and centroids %%%%%%%%
%cats
for i=1:40
mcoeffs_cats(19,i)=mean_centroid_cats(i);
end

%dogs
for i=1:40
mcoeffs_dogs(19,i)=mean_centroid_dogs(i);
end

%pigs
for i=1:40
mcoeffs_pigs(19,i)=mean_centroid_pigs(i);
end

%cows
for i=1:40
mcoeffs_cows(19,i)=mean_centroid_cows(i);
end

%sheeps
for i=1:40
mcoeffs_sheeps(19,i)=mean_centroid_sheeps(i);
end
%%%%%%%%%%%%%%%%%%%     birds   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%rosters
for i=1:40
mcoeffs_rosters(19,i)=mean_centroid_rosters(i);
end

%hens
for i=1:40
mcoeffs_hens(19,i)=mean_centroid_hens(i);
end

%crows
for i=1:40
mcoeffs_crows(19,i)=mean_centroid_crows(i);
end

%chirping_birds
for i=1:40
mcoeffs_chirping_birds(19,i)=mean_centroid_chirping_birds(i);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  mfccs and zcr and 4 formants and centroids and roll of points %%%%%%%%
%%%%%%%%%% mammals %%%%%%%%%%%%%%%%
%cats
for i=1:40
mcoeffs_cats(20,i)=mean_rofp_cats(i);
end

%dogs
for i=1:40
mcoeffs_dogs(20,i)=mean_rofp_dogs(i);
end

%pigs
for i=1:40
mcoeffs_pigs(20,i)=mean_rofp_pigs(i);
end

%cows
for i=1:40
mcoeffs_cows(20,i)=mean_rofp_cows(i);
end

%sheeps
for i=1:40
mcoeffs_sheeps(20,i)=mean_rofp_sheeps(i);
end

%%%%%%%%%%%  birds  %%%%%%%%%%%%%%%%%%%%%%%%%%
%rosters
for i=1:40
mcoeffs_rosters(20,i)=mean_rofp_rosters(i);
end

%hens
for i=1:40
mcoeffs_hens(20,i)=mean_rofp_hens(i);
end

%crows
for i=1:40
mcoeffs_crows(20,i)=mean_rofp_crows(i);
end

%chirping_birds
for i=1:40
mcoeffs_chirping_birds(20,i)=mean_rofp_chirping_birds(i);
end

%%%%%%%%%%%%%%%  mfccs and zcr and 4 formants and centroids and roll of points and flatness %%%%%%%%
%%%%%%%%%%%%%% mammals %%%%%%%%%%%%%%%%%%%
%cats
for i=1:40
mcoeffs_cats(21,i)=mean_flat_cats(i);
end

%dogs
for i=1:40
mcoeffs_dogs(21,i)=mean_flat_dogs(i);
end

%pigs
for i=1:40
mcoeffs_pigs(21,i)=mean_flat_pigs(i);
end

%cows
for i=1:40
mcoeffs_cows(21,i)=mean_flat_cows(i);
end

%sheeps
for i=1:40
mcoeffs_sheeps(21,i)=mean_flat_sheeps(i);
end

%%%%%%%%%%%% birds %%%%%%%%%%%%%
%rosters
for i=1:40
mcoeffs_rosters(21,i)=mean_flat_rosters(i);
end

%hens
for i=1:40
mcoeffs_hens(21,i)=mean_flat_hens(i);
end

%crows
for i=1:40
mcoeffs_crows(21,i)=mean_flat_crows(i);
end

%chirping_birds
for i=1:40
mcoeffs_chirping_birds(21,i)=mean_flat_chirping_birds(i);
end
