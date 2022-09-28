%生成样本对
rng('default')
clear ; close all; clc
load('L0/Wisconsin/Wisconsin5.mat');

% ALLdata = [testX testY];
% [m,n]=size(ALLdata);
% label=ALLdata(:,n);
%     
% data=ALLdata(:,1:n-1);
k=1;
[new_data]=KN_datacreat(trainX,trainY,testX,testY,k);

sample_pair_testX=[testX,new_data];
sample_pair_testY=[testY];
%分类效果
% Factor = TreeBagger(500, sample_pair_trainX, trainY);
% [Predict_label,Scores] = predict(Factor, sample_pair_testX);
% Predict_label=transpose(str2num(cell2mat(Predict_label)));
% svm = mean(double(Predict_label == testY)) * 100;

%     [trainX, mu, sigma] = featureCentralize(sample_pair_trainX);%%将样本标准化（服从N(0,1)分布）
%     P_testX = bsxfun(@minus, sample_pair_testX, mu);
%     P_testX = bsxfun(@rdivide, P_testX, sigma);%%将测试样本标准化
%     model = svmtrain(trainY,trainX,'-s 0 -c 10^5 -t 0 -q');
%     svm_pred = svmpredict(testY,sample_pair_testX,model); %预测标签


save("L0/Wisconsin/Wisconsin5.mat","sample_pair_testX","-append");%,"-append","type_num"