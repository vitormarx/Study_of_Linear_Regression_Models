
function plot3d(x, y, B)

figure()
scatter3(x(:,1), x(:,2),y, '*');
title('Modelo de Regressão Múltipla');
xlabel('variável regressora x1');
ylabel('variável regressora x2');
zlabel('variável dependente');
hold on    
[X1, X2] = meshgrid(min(x):1:max(x), min(x):1:max(x)); %escalas para eixos x1 e x2 de acordo com menor e maior valor da coluna de dados  
model = B(1) + (B(2).*X1) + (B(3).*X2); %linha de regressão multipla  
mesh(X1, X2, model);
hold off;

end