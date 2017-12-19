%RESOLUTION DE L'EQUATION AUX VALEURS PROPRES
%Recherche des n valeurs et vecteurs propres
n=4;
[V, D] = eigs(A, n, 'sm');
