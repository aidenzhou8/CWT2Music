%% Load .wav file and plot signal
[y, Fs] = audioread("prelude-and-fugue-clip.wav"); 
y = y(:,1); % select only one channel

r = length(y);
t = (0:r-1)/Fs;

figure;
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Audio');

%% Run Continuous Wavelet Transform (CWT)
[cfs, frq] = cwt(y, Fs);

% Compute power and phase from CWT coefficients
pwr   = abs(cfs).^2;
phase = angle(cfs);

%% Plot Power Spectrum
figure;
imagesc(t, frq, pwr);
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Power Spectrum');
colorbar;

%% Plot Phase Spectrum
figure;
imagesc(t, frq, phase);
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Phase Spectrum');
colorbar;

%% Reconstruct signal from CWT coefficients
% MATLAB provides built-in inverse CWT (icwt)

% y_reconstructed = icwt(cfs, frq, 'SignalMean', mean(y));
y_reconstructed = icwt(cfs);

% plot reconstructed vs original
figure;
plot(t, y, 'b', 'DisplayName', 'Original');
hold on;
plot(t, y_reconstructed, 'r--', 'DisplayName', 'Reconstructed');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original vs. Reconstructed Signal');
legend;

%% Listen to reconstructed audio (optional)
% sound(y_reconstructed, Fs);

%% Save reconstructed audio
audiowrite('reconstructed_audio.wav', y_reconstructed, Fs);
