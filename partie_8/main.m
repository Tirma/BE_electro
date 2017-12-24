% Fonction principale du programme
% Dans un premier temps :
%   Analyse des 4 premier modes quasi_TE/quasi_TM du guide semiconducteur
%   décrit par Stern à la figure 10.

clear all
close all
clc

g_ruban = WGgen_ruban;
g_ruban = TE_solve(g_ruban,2);
Z = display_mode(g_ruban,1);
figure;
surf(g_ruban.x,g_ruban.y,Z);
Z = display_mode(g_ruban,2);
figure;
surf(g_ruban.x,g_ruban.y,Z);

g_SMF = WGgen_SMF;
g_SMF = TE_solve(g_SMF,2);
Z = display_mode(g_SMF,1);
figure;
surf(g_SMF.x,g_SMF.y,Z);
Z = display_mode(g_SMF,2);
figure;
surf(g_SMF.x,g_SMF.y,Z);