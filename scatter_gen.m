% LATEX Initialization:
clc; 
clear; 
close all;
set(groot,'defaultAxesTickLabelInterpreter','latex');
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

%% Import data:
RF_data = readmatrix("data\classified_testSet_RF_use.csv","Range",'B:J');
SC_data = readmatrix("data\classified_testSet_SC_use.csv","Range",'B:J');


% Class types: 
% 0 - Urban
% 1 - Water
% 2 - Vegetation
% 3 - Bare Field
RF_data_bands = RF_data(2:end,1:5); % B2,B3,B4,B8,B11
landcover_class_RF = RF_data(2:end,end); % Class ground truth

SC_data_bands = SC_data(2:end,1:5); % B2,B3,B4,B8,B11
landcover_class_SC = SC_data(2:end,end); % Class ground truth

%% Plots: 
% Random Forest:
plotScatter(RF_data_bands, landcover_class_RF);
sgtitle('Supervised Classification (Random Forest) - Band-wise Scatter Plots');
% Smiled Cart:
plotScatter(SC_data_bands, landcover_class_SC);
sgtitle('Supervised Classification (Smiled Cart) - Band-wise Scatter Plots');
% Unsupervised (K-Means): 


%% Function:
function plotScatter(data_bands, landcover_class)
    class_0 = data_bands(landcover_class==0,:);
    class_1 = data_bands(landcover_class==1,:);
    class_2 = data_bands(landcover_class==2,:);
    class_3 = data_bands(landcover_class==3,:);

    figure; 
    hold on;
    subplot(3,4,1);
    plot(class_0(:,1), class_0(:,2), 'rx', class_1(:,1), class_1(:,2), 'bx',class_2(:,1), class_2(:,2), 'gx',class_3(:,1), class_3(:,2), 'cx');
    xlabel('B2'); ylabel('B3');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,2);
    plot(class_0(:,1), class_0(:,3), 'rx', class_1(:,1), class_1(:,3), 'bx',class_2(:,1), class_2(:,3), 'gx',class_3(:,1), class_3(:,3), 'cx');
    xlabel('B2'); ylabel('B4');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,3);
    plot(class_0(:,1), class_0(:,4), 'rx', class_1(:,1), class_1(:,4), 'bx',class_2(:,1), class_2(:,4), 'gx',class_3(:,1), class_3(:,4), 'cx');
    xlabel('B2'); ylabel('B8');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,4);
    plot(class_0(:,1), class_0(:,5), 'rx', class_1(:,1), class_1(:,5), 'bx',class_2(:,1), class_2(:,5), 'gx',class_3(:,1), class_3(:,5), 'cx');
    xlabel('B2'); ylabel('B11');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,5);
    plot(class_0(:,2), class_0(:,3), 'rx', class_1(:,2), class_1(:,3), 'bx',class_2(:,2), class_2(:,3), 'gx',class_3(:,2), class_3(:,3), 'cx');
    xlabel('B3'); ylabel('B4');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,6);
    plot(class_0(:,2), class_0(:,4), 'rx', class_1(:,2), class_1(:,4), 'bx',class_2(:,2), class_2(:,4), 'gx',class_3(:,2), class_3(:,4), 'cx');
    xlabel('B3'); ylabel('B8');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,7);
    plot(class_0(:,2), class_0(:,5), 'rx', class_1(:,2), class_1(:,5), 'bx',class_2(:,2), class_2(:,5), 'gx',class_3(:,2), class_3(:,5), 'cx');
    xlabel('B3'); ylabel('B11');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,8);
    plot(class_0(:,3), class_0(:,4), 'rx', class_1(:,3), class_1(:,4), 'bx',class_2(:,3), class_2(:,4), 'gx',class_3(:,3), class_3(:,4), 'cx');
    xlabel('B4'); ylabel('B8');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,9);
    plot(class_0(:,3), class_0(:,5), 'rx', class_1(:,3), class_1(:,5), 'bx',class_2(:,3), class_2(:,5), 'gx',class_3(:,3), class_3(:,5), 'cx');
    xlabel('B4'); ylabel('B11');
    % legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    subplot(3,4,10);
    plot(class_0(:,4), class_0(:,5), 'rx', class_1(:,4), class_1(:,5), 'bx',class_2(:,4), class_2(:,5), 'gx',class_3(:,4), class_3(:,5), 'cx');
    xlabel('B8'); ylabel('B11');
    legend('Class 0 - Urban','Class 1 - Water','Class 2 - Vegetation','Class 3 - Bare Field');
    
    % sgtitle('Supervised Classification (Smiled Cart) - Band-wise Scatter Plots');
end


