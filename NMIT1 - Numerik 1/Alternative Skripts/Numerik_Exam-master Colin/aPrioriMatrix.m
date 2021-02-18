% Berechnet die a-priori Absch�tzung f�r Matrizen
%
% PARAM
% B = berechnetes B aus Gauss oder Jacobi
% tol = toleranz
% 
% RETURN
% n = gesch�tzte Anzahl Iterationen
function n = aPrioriMatrix(x0, x1, B, tol)
    n = log10(tol*(1-norm(B,inf))/(norm(x1-x0, inf)))/log10(norm(B, inf));
end


