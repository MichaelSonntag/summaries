% Berechnet die Nullstelle im vorgebenen Intervall mit Hilfe des
% Bisektionsverfahren.
%
% Beispielaufruf:
% func = @(x) x.^3 -x + 0.3;
% func = @(x) x^7 -7*x^5 -2*x +0.76;
% [root, xit, n] = bisektion_iterativ(func, 3, 2, 0.00001);
%
% func = Funktion f�r die, die Nullstelle berechnet werden soll.
% a    = Intervallstart
% b    = Intervallende
% tol  = Toleranz f�r Akzeptant des Ergebnises
%
% R�ckgabe:
% root = Nullstelle
% xit  = Zwischenergebnisse
% n    = Anzahl Iterationen
function [root, xit, n] = bisektion_iterativ(func, a, b, tol) 
    if((func(a) * func(b)) > 0)
        error('ERROR: Nullstelle finden nicht m�glich.');
    end
    n = 0;
    xit = [];
    while(abs(a-b) > tol)
        funcA = func(a);
        x = (a + b) / 2;
        if(func(x) * funcA > 0)
            a = x;
        else
            b = x;
        end
        n = n + 1;
        xit(n) = x;
    end
    root = x;
end

% mailarap / schaumic