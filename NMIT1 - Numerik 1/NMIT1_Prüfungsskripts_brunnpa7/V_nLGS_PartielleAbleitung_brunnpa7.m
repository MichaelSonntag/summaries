% PARTIELLE ABLEITUNG
%
%
% INPUT:
% Funktion nach welcher abgeleitet werden soll
%
% OUTPUT:
% fx = Partielle Ableitung f�r fx
% fy = Partielle Ableitung f�r fy
%
% BEISPIELAUFRUF:
% Pascal_Brunner_PartielleAbleitung(x*y^2*(sin(x) + sin(y)))
%

function Pascal_Brunner_PartielleAbleitung(func)
% Variablen definieren
syms x y z

% Funktion definieren
f = func;

% REMINDER: 
% F�r jeden Inputparameter soll auch die partielle Ableitung angegeben werden

% 1. Partielle Ableitung f�r x
xPartAbl = diff(f, x);

% 1. Partielle Ableitung f�r y
yPartAbl = diff(f, y); 

disp('fx = ');
disp(xPartAbl);
disp('fy = ');
disp(yPartAbl);



end