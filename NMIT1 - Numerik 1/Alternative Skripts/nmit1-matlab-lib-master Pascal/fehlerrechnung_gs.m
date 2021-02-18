% F�hrt eine Fehlerberechung f�r ein gegebenes Gleichungsystum und desen
% gest�rtes Gleichungsystem druch
%
% A     = [20, 30, 10 ; 10, 17, 6; 2, 3, 2]
% b     = [5720 ; 3300 ; 836]
% AGest = [19.9, 29.9, 9.9 ; 9.9, 16.9, 5.9; 1.9, 2.9, 1.9]
% bGest = [5820 ; 3400 ; 936]
%
% unendlich-Norm
% [x, xGest, dxMax, dxObs, dxAbs] = fehlerrechnung_gs(A, b, AGest, bGest, inf)
% 1-Norm
% [x, xGest, dxMax, dxObs, dxAbs] = fehlerrechnung_gs(A, b, AGest, bGest, 1)
%
% A     = Gleichungssystem als Matrix
% b     = L�sung des Gleichungssystems
% AGest = Gest�rtes Gleichungssystem als Matrix
% bGest = Gest�rte L�sung des Gleichungssystems
% normLevel = Level of norm (1 or inf)
% x     = L�sung des Gleichungssystems A*x = b
% xGest = L�sung des Gleichungssystems AGest*xGest = bGest
% dxMax = Obere Schranke des relativen Fehlers
% dxObs = Tats�chlicher relativer Fehler
% dxAbs = Tats�chlicher absoluter Fehler
%
function [x,xGest,dxMax,dxObs,dxAbs] = fehlerrechnung_gs(A, b, AGest, bGest, normLevel)

x = linsolve(A, b);
xGest = linsolve(AGest, bGest);
format long

normDeltaA = norm(A -AGest, normLevel) / norm(A, normLevel);
normDeltab = norm(b - bGest, normLevel) / norm(b, normLevel);

if(cond(A, normLevel) * normDeltaA < 1)
    dxMax = nan;
else 
    dxMax=(cond(A, normLevel)) / (1 - (cond(A, normLevel)* normDeltaA)) * (normDeltaA + normDeltab);
end

dxAbs= norm(x - xGest, normLevel);
dxObs= dxAbs / norm(x, normLevel);

end


% Dominique Reiser