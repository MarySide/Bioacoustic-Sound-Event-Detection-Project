
function Z= zcr(window)
window2=zeros(size(window));
window2(2:end)=window(1:end-1);
Z=(1/(2*length(window))) * sum(abs(sign(window)-sign(window2)));
end
