clc;
clear;
 fs=44100;
 
 
 
%%%%%%%%%%
%cats
load('n_cats.mat')

for i=1:40
%     if i==6
%         continue;
%     end
signal=n_cats{i};
formants1a = formantsEstimation(signal,fs);
formants51(i,:)=formants1a(1,1:5);
%39
end

formants5=formants51([1:5, 7:end],:);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%dogs
load('dog_files.mat')
for i=1:40
    if(( i==7 )||( i==25))
        continue;
    end
signal=dogs{i};
formants2a = formantsEstimation(signal,fs);
formants52(i,:)=formants2a(1,1:5);

end
formantsmedia=formants52([1:6,8:24,26:end],:);
%38
for i=1:length(formantsmedia)
    formants5(39+i,:)=formantsmedia(i,:);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%pigs
 load('pig_files.mat')
 for i=1:40
   
signal=pigs{i};
formants3a = formantsEstimation(signal,fs);
formants53(i,:)=formants3a(1,1:5);
%40
 end
for i=1:length(formants53)
    formants5(77+i,:)=formants53(i,:);
end
%%%%%%%%%

%cows
load('cow_files.mat')
for i=1:40
   
signal=cows{i};
formants4a = formantsEstimation(signal,fs);
formants54(i,:)=formants4a(1,1:5);
%40
 end
for i=1:length(formants54)
    formants5(117+i,:)=formants54(i,:);
end

%%%%%%%%%%%%%%%%%%%%%%

%sheep
load('sheep_files.mat')
for i=1:40
   
signal=sheeps{i};
formants5a = formantsEstimation(signal,fs);
formants55(i,:)=formants5a(1,1:5);
%40
 end
for i=1:length(formants55)
    formants5(157+i,:)=formants55(i,:);
end