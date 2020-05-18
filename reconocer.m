function [Recognized] = reconocer(prsFFT,minimumSpike)
global Recognized

error = 100;
if (max(abs(prsFFT))+error) >= minimumSpike
   
    Recognized = 'abrir';
    %writeDigitalVoltage(ard,'D9',1);
else
    Recognized = 'No reconocida';
end

end