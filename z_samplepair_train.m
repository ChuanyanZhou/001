%����������
rng('default')
clear ; close all; clc
% ALLdata= importdata('d2/AD.mat');
load('L0/Wisconsin/Wisconsin1.mat');
ALLdata = [trainX trainY];
[m,n]=size(ALLdata);
label=ALLdata(:,n);
%%train ѵ������ѵ������Ѱ�ҽ���
data=ALLdata(:,1:n-1);
k=2;
[new_data,new_label]=KN_datacreat_train(data,label,k);

sample_pair_trainX2=[data,new_data];
sample_pair_trainY=[new_label];
%%test ���Լ���ѵ������Ѱ�ҽ���
k=1;
[new_data]=KN_datacreat(trainX2,trainY2,testX2,testY,k);

sample_pair_testX2=[testX2,new_data];
sample_pair_testY=[testY];

save("L23/AD/AD5.mat","sample_pair_trainX2","sample_pair_testX2","-append");