function [inputVoice, t2, inputVoiceFFT, inputVoice_freq] =  grabacionVoz()
FS = 44100;
vr = audiorecorder(44100,24,1);
disp("Inicio de grabacion");
recordblocking(vr,2);
disp("Fin de grabacion");
inputVoice = vr.getaudiodata();
t2 = 0:1/FS:(length(inputVoice)-1)/FS;

recordblocking(vr,2);
noise = vr.getaudiodata();
%inputVoice = inputVoice - noise;

inputVoiceFFT = fft(inputVoice);
inputVoiceFFT(end/2:end) = [];
inputVoice_freq = linspace(0,FS/2,length(inputVoiceFFT));
%figure(3);
%plot(inputVoice_freq,abs(inputVoiceFFT));



end
