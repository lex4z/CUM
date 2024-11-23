clear all
clc
close all
%% Инициализация
fs = 8000; % Частота дискретизации
dt = 1/fs; % Интервал дискретизации
fmain = 10; % Частота полезного синуса
ferr = 1000; % Частота мешающего синуса
Amain = 10; % Амплитуда полезного синуса
Aerr = 1; % Амплитуда мешающего синуса
n = (0:8000)'; % Шкала времени (номера отсчетов)
t = n*dt; % Шкала времени (в секундах)
ns = length(n); % Количество отсчетов сигнала

%% Формирование сигналов
sig_main = Amain*sin(2*pi*fmain*n/fs); % Полезный синус
sig_err = Aerr *sin(2*pi*ferr *n/fs); % Мешающий синус
sig_full = sig_main + sig_err; % Суммарный сигнал

%% Бегущее среднее
Nwindow = 4; % Ширина окна
sig_res1 = zeros(ns,1);
for k=Nwindow:ns
 sig_res1(k) = sum(sig_full(k-Nwindow+1:k))/Nwindow;
end
Nwindow = 8; % Ширина окна
sig_res2 = zeros(ns,1);
for k=Nwindow:ns
 sig_res2(k) = sum(sig_full(k-Nwindow+1:k))/Nwindow;
end

%% Отображение сигналов
hold all
grid on
plot(t,sig_full,'r')
plot(t,sig_res1,'g')
plot(t,sig_res2,'b')

%Запись отсчетов исходного сигнала в текстовый файл.

%% Запись отсчетов в файл
wr_sig_full = round(sig_full*2048); % Масштабирование исходного
%сигнала для записи в текстовый файл
%dlmwrite('/Users/alex33505/vivado-on-silicon-mac-main/lab113/data2fpga.dat',wr_sig_full);
writematrix(wr_sig_full,'/Users/alex33505/vivado-on-silicon-mac-main/lab113/data2fpga.dat');
%Чтение результатов моделирования из файла.

%% Чтение результатов моделирования алгоритма в FPGA из файла
fpga_result = readmatrix('/Users/alex33505/vivado-on-silicon-mac-main/lab113/data_from_fpga.dat');
fpga_result = fpga_result/2048; % Обратное масштабирование
%результатов из FPGA для корректного сравнения c результатами Matlab
%Сравнение результатов обработки сигнала в плавающей точке в Matlab и в фиксированной точке в FPGA.

%% Сравнение результатов Matlab с результатами из FPGA
err = fpga_result(Nwindow:ns) - sig_res2(Nwindow:ns); % Сигнал ошибки
max(abs(err)) % Максимальная ошибка
mean(abs(err)) % Среднее модуля ошибки
figure(2) % Эталонный результат в плавающей точке и результат из FPGA в фиксированной точке
hold all
grid on
plot(fpga_result(Nwindow:ns),'-d')
plot(sig_res2(Nwindow:ns),'--c')

