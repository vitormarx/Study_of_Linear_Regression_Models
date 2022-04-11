% r2 score function

% DESCRIÇÃO:
% retorna as métricas R2 e R2 ajustado do modelo de regressão linear 

% INPUTS:
% - grau : quantos graus tem o polinômio 
% - x : dados de entrada (features)
% - y : dados de saída (target)

% OUTPUTS:
% - model : saídas para o modelo de regressão 
% - B: coeficientes de regressão

function [R2, R2_adj] = r2_score(y, model, B)

n = length(y);

SQe = sum((y - model).^2);
Syy = sum((y - mean(y)).^2);
[~,p] = size(B);
     
R2 = 1 - (SQe / Syy); % coeficiente de determinação
R2_adj = 1 - ((SQe/(n-p))/(Syy/(n-1))); % coeficiente de determinação ajustado

end