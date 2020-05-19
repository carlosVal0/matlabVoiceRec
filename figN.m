function [grafico,freq] = figN(n)
    load databaseVectors.mat;
   switch n
       case 0
           grafico = y0_freq0;
           freq =  abs(y0_fft);

       case 1
            grafico = y1_freq1;
           freq =  abs(y1_fft);
       case 2
            grafico = y2_freq1;
           freq =  abs(y2_fft);
       case 3
            grafico = y3_freq1;
           freq =  abs(y3_fft);
       case 4
            grafico = y4_freq1;
           freq =  abs(y4_fft);
       case 5
            grafico = y5_freq1;
           freq =  abs(y5_fft);       
       case 6
            grafico = y6_freq1;
           freq =  abs(y6_fft);
       case 7
            grafico = y7_freq1;
           freq =  abs(y7_fft);
       case 8
            grafico = y8_freq1;
           freq =  abs(y8_fft);
       case 9
            grafico = y9_freq1;
           freq =  abs(y9_fft);
   end
