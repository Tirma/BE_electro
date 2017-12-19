% Script affichant les modes quasi-TM dans le guide optique
clc
clear all
close all

n_modes = 4; %nombres de modes à afficher
lambda = 1; %longueur d'onde dans le vide
a = 0.3; %demi longueur du diélectrique au coeur du guide d'onde
g = WGgen(a,lambda);%Structure représentant le guide optique se refferer à WGgen.m

g = TM_solve(g,n_modes);
figure;
plot(g.x,g.V,"LineWidth",3);
