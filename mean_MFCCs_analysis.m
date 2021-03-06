clear; clc; close all;

fs = 44100;

%%%%%%%%%%%%%%%%% mammals %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('n_cats.mat')
for i=1:40
coeffs1{i}= mfcc(n_cats{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_cats(i,j)=mean(coeffs1{j}(i,:));
    end 
end

%%%%%%%%%%%%%%%%%%%%%%%
load('n_dogs.mat')
for i=1:40
coeffs2{i}= mfcc(n_dogs{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_dogs(i,j)=mean(coeffs2{j}(i,:));
    end 
end

%%%%%%%%%%%%%%%%%%%%%%%%%
load('n_pigs.mat')
for i=1:40
coeffs3{i}= mfcc(n_pigs{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_pigs(i,j)=mean(coeffs3{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%%%%%
load('n_cows.mat')
for i=1:40
coeffs4{i}= mfcc(n_cows{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_cows(i,j)=mean(coeffs4{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('n_sheeps.mat')
for i=1:40
coeffs5{i}= mfcc(n_sheeps{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_sheeps(i,j)=mean(coeffs5{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%  birds %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('n_rosters.mat')
for i=1:40
coeffs6{i}= mfcc(n_rosters{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_rosters(i,j)=mean(coeffs6{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%
load('n_hens.mat')
for i=1:40
coeffs7{i}= mfcc(n_hens{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_hens(i,j)=mean(coeffs7{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%
load('n_crows.mat')
for i=1:40
coeffs8{i}= mfcc(n_crows{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_crows(i,j)=mean(coeffs8{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%%
load('n_chirping_birds.mat')
for i=1:40
coeffs9{i}= mfcc(n_chirping_birds{i},fs,'LogEnergy','ignore');
end
for j=1:40
for i=1:13
  mcoeffs_chirping_birds(i,j)=mean(coeffs9{j}(i,:));
    end 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear('delta','deltaDelta','i','j','loc','coeffs1','coeffs2','coeffs3','coeffs4','coeffs5','coeffs6','coeffs7','coeffs8','coeffs9')