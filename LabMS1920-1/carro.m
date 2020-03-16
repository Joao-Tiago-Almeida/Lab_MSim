% delete all variables
clear


% defini��o das vari�veis
massa_ = [30 15 15];
beta_ = [5 5 10];

Vo_ = [-3, 3];
Yo_ = 5;
Yo = timeseries(Yo_);
stop_time = 25;

% settings da figura 1 - velocidade
figure(1);clf; grid on; hold on;
title('Varia��o da velocidade (v) com o tempo (t)');xlabel('t [s]');ylabel('v(t) [m/s]');

% settings da figura 2 - posi��o
figure(2);clf; grid on; hold on;
title('Varia��o da posi��o (y) com o tempo (t)');xlabel('t [s]');ylabel('y(t) [m]')

% cria��o dos arrays para alojar legendas e plots
plotHandlesV = zeros(1,6);
plotLabelsV = strings(1,6);
plotHandlesY = zeros(1,6);
plotLabelsY = strings(1,6);

for i = 1:3 % loop para cada par massa/beta
    
    massa = massa_(i);
    beta = beta_(i);

    for j = 1:2 % loop para cada v0 (-3 ou 3 ms^(-1))
        Vo = timeseries(Vo_(j));
        sim_out = sim('movimento'); % execu��o da simula��o via simulink
        % i+(j-1)*3 -- increase 1:6 troughout i and j
        % \/ desenho no primeiro plot - velocidade \/
        figure(1) % faz plot e guarda-o conjuntamente com as vari�veis
        plotHandlesV(i+(j-1)*3) = plot(sim_out.tout, sim_out.velocity);
        plotLabelsV{i+(j-1)*3}=['massa = ' num2str(massa) 'Kg; coef. atrito = ' num2str(beta) 'Nm/s; \tau = m/\beta = ' num2str(massa/beta) 's'];
        % \/ desenho no segundo plot - posi��o \/
        figure(2) % faz plot e guarda-o conjuntamente com as vari�veis
        plotHandlesY(i+(j-1)*3) = plot(sim_out.position.Time, sim_out.position.Data); 
        plotLabelsY{i+(j-1)*3}=['massa = ' num2str(massa) 'Kg; coef. atrito = ' num2str(beta) 'Nm/s; \tau = m/\beta = ' num2str(massa/beta) 's'];
    end
end

% write plot legend
figure(1);
lgdv = legend(plotHandlesV, plotLabelsV, 'Location', 'northeast');
figure(2);
lgdy = legend(plotHandlesY, plotLabelsY, 'Location', 'east');


% draw elipse in steady points
figure(1);
elpsv1 = annotation('ellipse',[0.1 .9 .05 .05]);
tav1 = annotation('textarrow', [0.25 0.15], [0.85 0.91]);
tav1.String = 'Vo';
elpsv2 = annotation('ellipse',[0.1 .09 .05 .05]);
tav2 = annotation('textarrow', [0.25 0.15], [0.17 0.13]);
tav2.String = '-Vo';

% same as above, but for figure 2
figure(2);
elpsy = annotation('ellipse',[0.1 .49 .05 .05]);
tay = annotation('textarrow', [0.25 0.15], [0.52 0.52]);
tay.String = 'yo';