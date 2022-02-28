clear;
close all;
clc;
load('sheep_files.mat');
for i=1:40
    signal=sheeps{i};
    signalsize=length(signal);
    y = (signal-mean(signal));
    sum_volume_array(i)=sum(abs(y));

end

sum_cats=mean(sum_volume_array);