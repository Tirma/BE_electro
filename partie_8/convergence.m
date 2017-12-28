%Permet d'écrire dans un fichier .csv les différentes valeurs de neff
%La premiere partie le fait pour l'étude en fonction de h, pas de
%discretisation
%La seconde en fonction de la taille de la fenetre

function convergence

% fic = fopen("conv1.csv",'w');
% fprintf(fic, '%s;%s;%s\n',["h","neff1","neff2"]);
% for elt = 0.05:0.01:0.5
%     elt
%     g=WGgen_SMF(elt,10);
%     g = TE_solve(g,2);
%     neff1 = g.neff(1);
%     neff2=g.neféf(2);
%     
%     fprintf(fic, '%f;%f;%f\n',[elt neff1 neff2]);


fic = fopen("conv2.csv",'w');
fprintf(fic, '%s;%s;%s\n',["h","neff1","neff2"]);
for elt = 10:0.1:18
    elt
    g=WGgen_SMF(0.2,elt);
    g = TE_solve(g,2);
    neff1 = g.neff(1);
    neff2=g.neff(2);
    
    fprintf(fic, '%f;%f;%f\n',[elt neff1 neff2]);



end
   fclose(fic);
end