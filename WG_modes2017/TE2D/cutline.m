function cutline(g, nmode, x1, y1, x2, y2)
%
% g=cutline(g, nmode, x1, y1, x2, y2)
%
% entree : 
%    structure g, numero de mode nmode
%    coords des extremites du segments x1, y1, x2, y2
%
% sortie :
%    structure g
%       g.s : abscisse curviligne
%       g.val : valeurs echantillonnees sur le ligne de coupe
%
Nx=g.Nx;
Ny=g.Ny;
X=g.x;
Y=g.y;
sol=g.V(:, nmode);

Npts=200;
d=sqrt((x2-x1)^2+(y2-y1)^2);
dx=(x2-x1)/(Npts-1); 
dy=(y2-y1)/(Npts-1);
dr=sqrt(dx*dx+dy*dy);

g.s=linspace(0, d, Npts);
g.val=zeros(1, Npts);

for i=1:Npts
    x0=x1+(i-1)*dx;
    y0=y1+(i-1)*dy;
    [id, dist]=nearestNodeAt(g, x0, y0);
    g.val(i)=mean(sol(id));
end;

% version optimisee suppose index(g, i, j) := (j-1)*g.Nx+i;
% Z=reshape(sol, Nx, Ny);

figure
plot(g.s, g.val, 'r')
title(['cutline (x1, y1) = (' num2str(x1) ',' num2str(y1) ...
          ') -> (x2, y2) = (' num2str(x2) ',' num2str(y2) ]);
grid on          
end


