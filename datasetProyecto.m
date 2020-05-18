%ard = arduino;
function datasetProyecto
[y0, s_fs0] = audioread('set0.wav');
[y1, s_fs1] = audioread("set1.wav");
[y2, s_fs2] = audioread("set2.wav");
[y3, s_fs3] = audioread("set3.wav");
[y4, s_fs4] = audioread("set4.wav");
[y5, s_fs5] = audioread("set5.wav");
[y6, s_fs6] = audioread("set6.wav");
[y7, s_fs7] = audioread("set7.wav");
[y8, s_fs8] = audioread("set8.wav");
[y9, s_fs9] = audioread("set9.wav");
[y10, s_fs10] = audioread("set10.wav");
t = 0:1/s_fs0:(length(y0)-1)/s_fs0;
FS = 44100;

y0_fft = fft(y0);
y0_fft(end/2:end) = [];
y0_freq0 = linspace(0,s_fs1/2,length(y0_fft));
y1_fft = fft(y1);
y1_fft(end/2:end) = [];
y1_freq1 = linspace(0,s_fs1/2,length(y1_fft));
y2_fft = fft(y2);
y2_fft(end/2:end) = [];
y2_freq1 = linspace(0,s_fs2/2,length(y2_fft));
y3_fft = fft(y3);
y3_fft(end/2:end) = [];
y3_freq1 = linspace(0,s_fs3/2,length(y3_fft));
y4_fft = fft(y4);
y4_fft(end/2:end) = [];
y4_freq1 = linspace(0,s_fs4/2,length(y4_fft));
y5_fft = fft(y5);
y5_fft(end/2:end) = [];
y5_freq1 = linspace(0,s_fs5/2,length(y5_fft));
y6_fft = fft(y6);
y6_fft(end/2:end) = [];
y6_freq1 = linspace(0,s_fs6/2,length(y6_fft));
y7_fft = fft(y7);
y7_fft(end/2:end) = [];
y7_freq1 = linspace(0,s_fs7/2,length(y7_fft));
y8_fft = fft(y8);
y8_fft(end/2:end) = [];
y8_freq1 = linspace(0,s_fs8/2,length(y8_fft));
y9_fft = fft(y9);
y9_fft(end/2:end) = [];
y9_freq1 = linspace(0,s_fs9/2,length(y9_fft));
inputVoiceFFT = fft(y10);
inputVoiceFFT(end/2:end) = [];
% 
% a0 = plot(y0_freq0(1:371),abs(y0_fft(1:371)));
% a1 = plot(y1_freq1(1:371),abs(y1_fft(1:371)));
% a2 = plot(y2_freq1(1:371),abs(y2_fft(1:371)));
% a3 = plot(y3_freq1(1:371),abs(y3_fft(1:371)));
% a4 = plot(y4_freq1(1:371),abs(y4_fft(1:371)));
% a5 = plot(y5_freq1(1:371),abs(y5_fft(1:371)));
% a6 = plot(y6_freq1(1:371),abs(y6_fft(1:371)));
% a7 = plot(y7_freq1(1:371),abs(y7_fft(1:371)));
% a8 = plot(y8_freq1(1:371),abs(y8_fft(1:371)));
% a9 = plot(y9_freq1(1:371),abs(y8_fft(1:371)));

spikes = [max(abs(y0_fft)) max(abs(y1_fft)) max(abs(y2_fft)) max(abs(y3_fft)) max(abs(y4_fft)) max(abs(y5_fft)) max(abs(y6_fft)) max(abs(y7_fft)) max(abs(y8_fft)) max(abs(y9_fft)) max(abs(inputVoiceFFT))];
minimumSpike = min(spikes);
%disp("El minimo es " + minimumSpike + " en amplitud")

% vr = audiorecorder(44100,24,1);
% disp("Inicio de grabacion");
% recordblocking(vr,2);
% disp("Fin de grabacion");
% inputVoice = vr.getaudiodata();
% t2 = 0:1/FS:(length(inputVoice)-1)/FS;
%figure(2);
%plot(t2,inputVoice)

% recordblocking(vr,2);
% noise = vr.getaudiodata();
% inputVoice = inputVoice - noise;
% 
% inputVoiceFFT = fft(inputVoice);
% inputVoiceFFT(end/2:end) = [];
% inputVoice_freq = linspace(0,s_fs10/2,length(inputVoiceFFT));
% figure(3);
% plot(inputVoice_freq,abs(inputVoiceFFT));

% prs = bandpass(inputVoice,[60 200],44100);
% prsFFT = fft(prs);
% prsFFT(end/2:end) = [];
% prsFFT_freq = linspace(0,44100/2,length(prsFFT));
% figure(4);
% plot(prsFFT_freq(1:317),abs(prsFFT(1:317)));


% error = 150;
% if (max(abs(prsFFT))+error) >= minimumSpike
%    
%     disp("Abrir");
%     %writeDigitalVoltage(ard,'D9',1);
% else
%     disp("No reconocida");
% end


function grafico = figN(n)
   switch n
       case 0
           grafico = [ y0_freq0 abs(y0_fft)];

       case 1
           grafico = [ y0_freq0 abs(y0_fft)];
       case 2
           grafico = [ y0_freq0 abs(y0_fft)];
       case 3
           grafico = [ y0_freq0 abs(y0_fft)];
       case 4
           grafico = [ y0_freq0 abs(y0_fft)];
       case 5
           grafico = [ y0_freq0 abs(y0_fft)];        
       case 6
           grafico = [ y0_freq0 abs(y0_fft)];
       case 7
           grafico = [ y0_freq0 abs(y0_fft)];
       case 8
           grafico = [ y0_freq0 abs(y0_fft)];
       case 9
           grafico = [ y0_freq0 abs(y0_fft)];
   end
end

function [inputVoice, t2, inputVoiceFFT, inputVoice_freq] =  grabacionVoz()

vr = audiorecorder(44100,24,1);
disp("Inicio de grabacion");
recordblocking(vr,2);
disp("Fin de grabacion");
inputVoice = vr.getaudiodata();
t2 = 0:1/FS:(length(inputVoice)-1)/FS;

recordblocking(vr,2);
noise = vr.getaudiodata();
inputVoice = inputVoice - noise;

inputVoiceFFT = fft(inputVoice);
inputVoiceFFT(end/2:end) = [];
inputVoice_freq = linspace(0,s_fs10/2,length(inputVoiceFFT));
%figure(3);
%plot(inputVoice_freq,abs(inputVoiceFFT));



end

function [prs, prsFFT, prsFFT_freq] = inputVoiceFilter(inputVoice)
prs = bandpass(inputVoice,[60 200],44100);
prsFFT = fft(prs);
prsFFT(end/2:end) = [];
prsFFT_freq = linspace(0,44100/2,length(prsFFT));
%figure(4);
%plot(prsFFT_freq(1:317),abs(prsFFT(1:317)));


end

function reconocer()

error = 150;
if (max(abs(prsFFT))+error) >= minimumSpike
   
    disp("Abrir");
    %writeDigitalVoltage(ard,'D9',1);
else
    disp("No reconocida");
end



end
end