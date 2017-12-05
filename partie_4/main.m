function main
clc
clear all
close all

g = solve(WGgen,5);

%Analytique
disp("neff analytique : ");
disp(" ");
neff_pair_impair;
traceur_modes_guides;

disp(" ");
disp("neff numerique : ");
g.neff

figure
hold on;
for elt=g.Vp
    plot(g.x,elt,'Linewidth',3);
    
end
hold off;
end