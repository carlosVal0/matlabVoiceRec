function [prs, prsFFT, prsFFT_freq] = inputVoiceFilter(inputVoice)
prs = bandpass(inputVoice,[60 200],44100);
prsFFT = fft(prs);
prsFFT(end/2:end) = [];
prsFFT_freq = linspace(0,44100/2,length(prsFFT));
%figure(4);
%plot(prsFFT_freq(1:317),abs(prsFFT(1:317)));


end