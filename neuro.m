%% �������������� ����������
stIndex = 10;
finIndex = 19;
size = 100;
%% ������ �����������, ������������ ������� ������
P = get_initial_neuro(stIndex, finIndex);
%% ������� �������
T = set_out_value(size);
%% ������� min � max �������� ������ 
PR = min_max_come_value(size);
%% ��������� � �������� ����
net=newff(PR,[50 10]);
net.trainParam.epochs = 80;
net=train(net, P, T);
%% ������������ ����
run_neuro('11.png', net);
run_neuro('11_test.png', net);