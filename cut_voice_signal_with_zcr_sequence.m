clc;
clear;
close all
load('pig_files.mat')

i2=20;

fs=44100;
noverlap=0;
signal=pigs{i2};
windowlength=4410/2;
signalsize=length(signal);
y = (signal-mean(signal)); 
y = y + 0.05*randn(signalsize,1);
signal=y;

for i=0:round(signalsize/windowlength)
  
        
        if i==0
        z(i+1)= zcr(signal(1:( (i+1)*windowlength + i) ,1));
   
        else 
                if( (signalsize - (i*(windowlength+1)) ) <windowlength )
        
        z(((i+1)*windowlength + i) - (i*(windowlength+1)))=zcr(signal(((i+1)*windowlength + i):signalsize));
        break;
    
        print("Yayyy");
        z(((i+1)*windowlength + i) - (i*(windowlength+1)))=zcr(signal(((i+1)*windowlength + i):signalsize));
        break;
              else 
        z(windowlength*i)= zcr(signal((i*(windowlength+1)):( (i+1)*windowlength + i) ,1));
        
              end 
        end
        
        
   
end

%% min max scaling of zcr sequence
minz= min(z);
maxz = max(z);
zmm = (z-minz)/(maxz-minz);
%%%%%%%%%%%%%%%%%%%%%%%%
if length(signal) ~= length(zmm)
        m = min(length(signal),length(zmm));
        signal = signal(1:m);
        zmm= zmm(1:m);
end
%%%%%%%%%%%%%%%    
for_t=find(zmm~=0);
znz= nonzeros(zmm);
%%%%%%%%%%
figure;
signal1=pigs{i2};

plot(signal1)
hold on 
% plot(zmm, 'r')
%%%%%%%%%%%
minznz= min(znz);
maxznz = max(znz);
znew = (znz-minznz)/(maxznz-minznz);
%%%%%%%%%%%
% plot(for_t,znn);
plot(for_t,znew);

hold on 
% where=find(znew>=0.3);
where=find(znew<=0.8);%% me megalytero pianw to keno , % me mikr;otero to shma
a=2;
b=1;
dffbel=find(diff(where)~=1); %% poia den einai diadoxika


for i3 =1:length(dffbel)

 xline(for_t(where(dffbel(i3))),'--g','End');


hold on 
 edie(i3)=for_t(where(dffbel(i3)));

end
xline(for_t(where(length(where))),'--g','End');
 xline(for_t(where(1)),'--m','Start');
for i4 =2:(length(where))
 if (where(a)-where(b)~=1)
      xline(for_t(where(i4)),'--m','Start');
 
 end
a=a+1;
b=b+1;
end
