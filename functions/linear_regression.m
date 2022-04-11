% linear regression function

% DESCRIÇÃO:
% retorna o modelo de reressão linear e os coeficientes de regressão

% INPUTS:
% - grau : quantos graus tem o polinômio 
% - x : dados de entrada (features)
% - y : dados de saída (target)

% OUTPUTS:
% - model : saídas para o modelo de regressão 
% - B: coeficientes de regressão

function [model, B] = linear_regression(grau, x, y)
n = length(x);
    
for i = 1: grau
    X(:,i) = x.^i;
end

X = [ones(n,1) X]; % adiciona uma coluna com valor 1 à esquerda da matriz X

B = (X'*X)^(-1) * X'*y; % estimativa dos mínimos quadrados

model = X*B; %modelo de regressão múltipla

end