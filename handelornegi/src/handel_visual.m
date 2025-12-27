% Handel örneğini yükle
load handel.mat   % y: ses verisi, Fs: örnekleme frekansı

% Ses çal
sound(y, Fs);

%% 🎬 Dalga Animasyonu
t = (0:length(y)-1)/Fs;
figure('Name','Dalga Animasyonu');
for i = 1:Fs:length(y)-Fs
    idx1 = round(i);
    idx2 = round(i+Fs);
    plot(t(idx1:idx2), y(idx1:idx2));
    xlabel('Zaman (s)');
    ylabel('Genlik');
    title('Handel Dalga Animasyonu');
    axis([t(idx1) t(idx2) -1 1]);
    pause(0.05);
end

%% 🌆 Şehir Silüeti (Frekans Spektrumu)
Y = fft(y);                      % Fourier dönüşümü
L = length(Y);
P = abs(Y/L);                    % Genlik spektrumu
P1 = P(1:floor(L/2)+1);          % Tek taraflı spektrum
f = Fs*(0:(L/2))/L;              % Frekans ekseni

figure('Name','Şehir Silüeti');
bar(f, P1, 'FaceColor',[0.2 0.2 0.8]); % Mavi binalar gibi
xlabel('Frekans (Hz)');
ylabel('Genlik');
title('Handel Sesinin Şehir Silüeti');

% Dalga animasyonunun bir karesini kaydet
saveas(gcf, '../figures/dalga_animasyonu.png');

