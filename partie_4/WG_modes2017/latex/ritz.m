%RESOLUTION DE L'EQUATION AUX VALEURS PROPRES
nmode=4;
[V, D] = eigs(K, nmode, 'sm');
% vecteur propre associee valeur propre numero nmode
fdm.sol = V(:,nmode); 
