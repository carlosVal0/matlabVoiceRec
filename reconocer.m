function reconocer(prsFFT,minimumSpike)

error = 150;
if (max(abs(prsFFT))+error) >= minimumSpike
   
    disp("Abrir");
    %writeDigitalVoltage(ard,'D9',1);
else
    disp("No reconocida");
end



end