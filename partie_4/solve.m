function [g]=solve(g,n)

A = build_A(g);
P = eye(g.Nx);
P(1,1) = 0;
P(g.Nx,g.Nx) = 0;
Ap = P * A * P';
[~,Dp] = eigs(Ap - diag((max(g.indice))^2), n, 'sm'); %renvoie les n plus petites valeurs propres de la matrice
lambda_p = diag(Dp) + max(g.indice)^2;
neff = sqrt(lambda_p)

g.neff = neff;


end