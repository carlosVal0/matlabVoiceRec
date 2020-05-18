global FS
global y0
global y1
global y2
global y3
global y4
global y5
global y6
global y7
global y8
global y9
global y10
global y0_fft
global y1_fft
global y2_fft
global y3_fft
global y4_fft
global y5_fft
global y6_fft
global y7_fft
global y8_fft
global y9_fft
global y0_freq1
global y1_freq1
global y2_freq1
global y3_freq1
global y4_freq1
global y5_freq1
global y6_freq1
global y7_freq1
global y8_freq1
global y9_freq1
global spikes
global minimumSpike

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
y0_freq1 = linspace(0,s_fs1/2,length(y0_fft));
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
spikes = [max(abs(y0_fft)) max(abs(y1_fft)) max(abs(y2_fft)) max(abs(y3_fft)) max(abs(y4_fft)) max(abs(y5_fft)) max(abs(y6_fft)) max(abs(y7_fft)) max(abs(y8_fft)) max(abs(y9_fft))];
minimumSpike = min(spikes);
