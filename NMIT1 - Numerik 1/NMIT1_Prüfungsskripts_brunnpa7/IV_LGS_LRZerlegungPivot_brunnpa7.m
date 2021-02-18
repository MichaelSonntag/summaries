% L�st das Gleichungssystem Ax = b mit der LR-Zerlegung 
% mit Zeilenvertauschung aus
%
%
% A = Matrix f�r die die LR-Zerlegung gemacht werden soll
% b = Ziel-Vektor des Gleichungssystems
% L = Normierte untere Dreiecksmatrix
% R = Obere Dreiecksmatrix
% P = Matrix mit Zeilen Vertauschung
% y = Zwischenresultat : Ly = Pb
% x = L�sung des Gleichungssystems : Rx = y
% 
% Beispielaufruf: 
% [L, R, P, y, x] = IV_LGS_LRZerlegungPivot_brunnpa7([3 9 12 12; -2 -5 7 2; 6 12 18 6; 3 7 38 14], [51;2;54;79])
%
function [L, R, P, y, x] = IV_LGS_LRZerlegungPivot_brunnpa7(A, b)
format rat
[L, R, P] = lu(A);

y = linsolve(L, P*b); % Ly = Pb
x = linsolve(R, y);   % Rx = y

if(IV_LGS_MatrizenVergleich_brunnpa7(L*R, P*A))
disp('LR == PA')
else
disp('LR != PA')  
end
end