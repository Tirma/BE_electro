% Fonction principale du programme
% Dans un premier temps :
%   Analyse des 4 premier modes quasi_TE/quasi_TM du guide semiconducteur
%   décrit par Stern à la figure 10.

function main
clear all
close all
clc

% g_ruban = WGgen_ruban;
% g_ruban = TE_solve(g_ruban,2);
% Z = display_mode(g_ruban,1);
% figure;
% surf(g_ruban.x,g_ruban.y,Z);
% Z = display_mode(g_ruban,2);
% figure;
% surf(g_ruban.x,g_ruban.y,Z);


pas = 0.12; %pas h de discretisation en micro m
cote = 10; % demi dimension du guide
g_SMF = WGgen_SMF(pas,cote);
g_SMF = TE_solve(g_SMF,2);
g_SMF.neff
Z = display_mode(g_SMF,1);
figure;
surf(g_SMF.x,g_SMF.y,Z);
Z = display_mode(g_SMF,2);
figure;
surf(g_SMF.x,g_SMF.y,Z);
  
  cutline(g_SMF,1,-10,0,10,0);

end