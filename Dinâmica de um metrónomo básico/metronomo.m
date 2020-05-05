% clear workspace and close all figures
clear; close all;

sig = set_signal();
s = set_system();


%% Question 5 - Schematic system whit multiple blocks
c = set_controller(5);  % set c.schematic = 6 - multiple blocks
sig.y=sim('metron','StopTime', '5');

plotYY(sig.y,'Response to Initial Condition -  multiple blocks');
plotSS(sig.y,'State Space to Initial Condition -  multiple blocks');

%% Question 6 - Schematic system state-system block
c = set_controller();   % set c.schematic = 6 - SS block
sig.y=sim('metron','StopTime', '5');

plotYY(sig.y,'Response to Initial Condition -  State-Space block');
plotSS(sig.y,'State Space -  State-Space block');

%% Question 7 - Try system response for differents values of beta

% changes beta parameter
s.beta = 1;
s.A22 = -s.beta/s.J;
A = [0 1;s.A21 s.A22];
s.sys=ss(A,s.sys.B,s.sys.C,s.sys.D);

s.beta = 1;
sig.y=sim('metron','StopTime', '5');
plotYY(sig.y,'Response to Initial Condition -  $\beta$ = 1 Nm/rad');
plotSS(sig.y,'State Space $\dot{\theta}(\theta)$ -  $\beta$ = 1 Nm/rad');

% changes beta parameter
s.beta = 0;
s.A22 = -s.beta/s.J;
A = [0 1;s.A21 s.A22];
s.sys=ss(A,s.sys.B,s.sys.C,s.sys.D);

sig.y=sim('metron','StopTime', '5');
plotYY(sig.y,'Response to Initial Condition -  $\beta$ = 0 Nm/rad');
plotSS(sig.y,'State Space $\dot{\theta}(\theta)$ -  $\beta$ = 0 Nm/rad');

%% Question 7 - quiver plot

quiverSS(s.sys.A,sig.y);