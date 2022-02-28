clear;
close all;
clc;
load('n_sheeps.mat');
load('n_dogs.mat');
load('n_cats.mat');
load('n_pigs.mat');
load('n_cows.mat');
load('n_rosters.mat');
load('n_chirping_birds.mat');
load('n_crows.mat')
load('n_hens.mat')
%sheeps%%
for i=1:40
    s1(i)=length(n_sheeps{i});
end
s11=max(s1);
%%dogs%%
for i=1:40
    s2(i)=length(n_dogs{i});
end
s22=max(s2);
%cats
for i=1:40
    s3(i)=length(n_cats{i});
end
s33=max(s3);
%pigs
for i=1:40
    s4(i)=length(n_pigs{i});
end
s44=max(s4);
%%cows
for i=1:40
    s5(i)=length(n_cows{i});
end
s55=max(s5);
%rosters
for i=1:40
    s6(i)=length(n_rosters{i});
end
s66=max(s6);
%chirping birds
for i=1:40
    s7(i)=length(n_chirping_birds{i});
end
s77=max(s7);
%crows
for i=1:40
    s8(i)=length(n_crows{i});
end
s88=max(s8);
%hens
for i=1:40
    s9(i)=length(n_hens{i});
end
s99=max(s9);
s=[s11 s22 s33 s44 s55 s66 s77 s88 s99];
smax=max(s);
a=2;
b=1;
signal=n_cats{1};

df=smax-length(signal);
signal1=signal(df:smax,1);
times=round(smax/length(signal))-1;
if times==-1
    times=1;
end 
for i3=1:times
    if (times*)
 for i2=1:(df-1)
      n=nnz(signal1)*2 ;
     if n==smax
         break;
    signal1(2*i2,1)=(signal(a,1)+signal(b,1))/2;
    
         b=b+1;
        a=a+1;
        
     end
     
 end
 
 

end