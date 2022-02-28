

function formants = formantsEstimation(signal,fs)
dt = 1/fs;

I0 = round(0.1/dt);
 %I0 = round(0.05/dt);

Iend = round(0.25/dt);
%Iend = round(0.1/dt);

signal = signal(I0:Iend);
%apply hamming and preemphasise audio signal
signal = signal.*hamming(length(signal));
preemph = [1 0.63];
signal = filter(1,preemph,signal);

%get Linear prediction filter
coeff = 2+fs/1000;           % rule of thumb for formant estimation
L = lpc(signal,coeff);

% find frequencies by root-solving
r = roots(L);                  % find roots of polynomial L
r = r(imag(r)>=0);             % only look for roots >0Hz up to fs/2
angz = atan2(imag(r),real(r));
[frqs,indices] = sort(angz.*(fs/(2*pi)));
bw = -1/2*(fs/(2*pi))*log(abs(r(indices)));
nn = 1;
for kk = 1:length(frqs)
    if (frqs(kk) > 90 && bw(kk) <400)
        formants(nn) = frqs(kk);
        nn = nn+1;
    end
end