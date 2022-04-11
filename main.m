% UNIVERSIDADE FEDERAL DO CEARÁ
% ALUNO: VITOR MARX MELO SILVA - 385141
% DISC.: Inteligência Computacional

clc;
clear;

% carregamento dos dados 
dados = load('datasets/aerogerador.dat');

x = dados(:,1); %variáveis de entrada
y = dados(:,2); %variáveis de saída

grau = 4; % grau do polinômio regressor

% realizando regressão linear
[model, B] = linear_regression(grau, x, y);
 
%medida de adequação do modelo na regressão múltipla    
[R2, R2_adj] = r2_score(y, model, B);

fprintf('métricas para o modelo de regressão linear\n');
fprintf('métrica R²: %.4f\n', R2);
fprintf('métrica R² adj: %.4f\n\n', R2_adj);

% visualizando regressão linear     
figure();
scatter(x, y, 'black');
hold on
plot(x, model, 'r-');
title('AEROGERADOR');
xlabel('velocidade do vento(km/h)');
ylabel('potência');
legend('dados', 'regressão', 'Location','southeast')
hold off;
%%

% carregamento dos dados 
Dados = load('datasets/Dados.dat');

x = Dados(:,1:2); % features
y = Dados(:,3); % targets 

% modelo de regressão multipla
[model, B] = multiple_regression(x, y);

%medida de adequação do modelo na regressão múltipla    
[R2, R2_adj] = r2_score(y, model, B);

fprintf('métricas para o modelo de regressão múltipla\n');
fprintf('métrica R²: %.4f\n', R2);
fprintf('métrica R² adj: %.4f', R2_adj);

% visualizando regressão múltipla
plot3d(x, y, B);
