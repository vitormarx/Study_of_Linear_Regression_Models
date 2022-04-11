% multiple regression function

% DESCRIÇÃO:
% retorna o modelo de reressão multipla e os coeficientes de regressão

% INPUTS:
% - x : dados de entrada (features)
% - y : dados de saída (target)

% OUTPUTS:
% - model : saídas para o modelo de regressão 
% - B: coeficientes de regressão

function [model, B] = multiple_regression(x, y)

n = length(x);
    
X = [ones(n,1) x]; % adiciona uma coluna com valor 1 à esquerda da matriz X

B = (X'*X)^(-1) * X'*y; % estimativa dos mínimos quadrados

model = X*B; %modelo de regressão múltipla

end