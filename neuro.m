%% Иинициализация переменных
stIndex = 10;
finIndex = 19;
size = 100;
%% Чтение изображений, формирование матрицы входов
P = get_initial_neuro(stIndex, finIndex);
%% Матрица выходов
T = set_out_value(size);
%% Матрица min и max значений входов 
PR = min_max_come_value(size);
%% Настройка и обучение сети
net=newff(PR,[50 10]);
net.trainParam.epochs = 80;
net=train(net, P, T);
%% Тестирование сети
run_neuro('11.png', net);
run_neuro('11_test.png', net);