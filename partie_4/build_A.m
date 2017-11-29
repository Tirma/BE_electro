function [A] = build_A(g)
N= g.Nx ;
A = sparse(diag(2*ones(N,1)) - diag(ones(N-1,1),1) - diag(ones(N-1,1),-1)) ;
A = A * (g.lambda/(2*pi*g.dx))^2 ;
A = A + sparse(diag(g.indice));
end

