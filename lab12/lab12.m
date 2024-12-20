fid = fopen('wifi_80211b_fd22.pcm');
% Чтение 16-битных целочисленных отсчетов из файла.
data = fread(fid,Inf,'int16');
fclose(fid);
data_i = downsample(data,2); % Синфазная составляющая входного сигнала
data_q = downsample(data,2,1); % Квадратурная составляющая входного сигнала
%data_samples = complex(data_i,data_q); % Результирующий сигнал в основной полосе частот.

data_samples = data_i;
%% Запись отсчетов в файл
wr_sig_full = data_samples; % Масштабирование исходного сигнала для записи в текстовый файл
dlmwrite('data2fpga.dat',wr_sig_full);

%% Чтение результатов моделирования алгоритма в FPGA из файла
fpga_result = dlmread('data_from_fpga.dat');
fpga_result = fpga_result; % Обратное масштабирование результатов из FPGA для корректного сравнения c результатами Matlab

%% Фильтрация
coeffs = [1 1 1 -1 -1 -1 1 -1 -1 1 -1];
coeffs = flip(coeffs);

filtered_data = conv(wr_sig_full,coeffs)/2048;

%plot(filtered_data)

%% Рассчёт ошибки, максимальной и средей ошибки
err = fpga_result(2:end) - filtered_data(1:length(fpga_result)-1); % Сигнал ошибки
max(abs(err)) % Максимальная ошибка
mean(abs(err)) % Среднее модуля ошибки

%% графики исходных данных и данных, обработанных FPGA
plot(fpga_result)
hold on
plot(data_samples)

%% графики модулей данных, обработанных в MatLab и данных, обработанных FPGA
plot(abs(filtered_data(2:length(fpga_result)-1)))
hold on
plot(abs(fpga_result(2:end)))
