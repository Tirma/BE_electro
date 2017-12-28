%calcul de la fréquence de coupure du second mode
%Données ecrites dans n fichier csv
%La valeur nulle correspond a la longueur d'onde de coupure

function fcoupure

fic = fopen("fcoupure.csv",'w');
fprintf(fic, '%s;%s\n',["lambda","result"]);
for lambda = 1:0.01:1.3
    g=WGgen_SMF(0.12,11);
    g.lambda = lambda;
    lambda
    g = TE_solve(g,2);
    neff2=g.neff(2);
    neff2 = neff2-1.46;
    
    fprintf(fic, '%f;%f\n',[lambda neff2]);



end
   fclose(fic);
end