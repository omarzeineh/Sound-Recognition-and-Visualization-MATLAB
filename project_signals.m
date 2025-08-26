clear; clc;
format compact

% Defining And Giving Parameters To The Audio Object
% aduiorecorderObj
f = 44100;
audio = audiorecorder(f,16,1);
duration = input('Input The Duration of The Audio: ');


% Recording The Audio
disp('start speaking')
recordblocking(audio, duration);
disp('End of recording')

% Finding The Aduio Signal
signalt = getaudiodata(audio);
play(audio);
t = 0:1/f:duration-1/f;
n = length(t);

% Finding The Fourier Transform And The Frequencies That Make The Audio Signal Up
signalf = fftshift(fft(signalt));
f_d = -n/2:(n/2)-1;
w = length(f_d);

% Finding The Power
power = (abs(signalf).^2)/n;

% Time Domain Plot
figure(1)
stem(t, signalt, "MarkerSize",0.1,"LineWidth",0.1)
xlabel('Time (s)')
ylabel('Amplitude')
title('Time Domain  Plot')

% Fourier Transfrom  Plot
figure(2)
stem(f_d(n/2+1:n), abs(signalf(n/2+1:n)), "MarkerSize",0.1,"LineWidth",0.1)
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Fourier Transfrom  Plot')

% Power Spectrum Plot
figure(3)
stem(f_d(n/2+1:n), power(n/2+1:n), "MarkerSize",0.1,"LineWidth",0.1)
xlabel('Frequency (Hz)')
ylabel('Power')
title('Power Spectrum Plot')

% Calculating The Energy
energy = sum(abs(signalt).^2);

% Finding The Maximum Frequency Component
max_freq_comp_index = find(abs(signalf) == max(abs(signalf)));
max_freq_comp = f_d(max_freq_comp_index);
max_freq_comp_1 = max_freq_comp(2)

% Plotting The Histogram
figure(4)
histogram(signalt)
title('The Signal''s Histogram' )
% Statistical Features of The Recorded Audio Signal
Average = mean(signalt);
Standard_Deviation = std(signalt);
Variance = Standard_Deviation^2;
Mode = mode(signalt);
Median = median(signalt);

fprintf('Duration = %4.2f s \n',duration)
fprintf('Energy = %6.2f \n',energy)
fprintf('Maximum Frequency Component = %6.0f \n',max_freq_comp_1)
fprintf('Average = %1.6f \n',Average)
fprintf('Standard Deviation = %1.6f \n',Standard_Deviation)
fprintf('Variance = %1.6f \n',Variance)
fprintf('Mode = %1.6f \n',Mode)
fprintf('Median = %1.6f \n',Median)