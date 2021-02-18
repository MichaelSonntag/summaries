% y = faculty(10)
function [y] = faculty(n)

    if n < 0 || fix(n) ~= n
        error('ERROR: FAK ist nur f�r nicht-negative, ganze Zahlen definiert')
    end

    y = 1;
    for i = 1:n
        y = y * i;
    end
end
% Ab einem gewissen Schwellwert wird die Laufzeit des rekursiven Aufrufs
% gr�sser als die der For-Schlaufe, weil alle Rekursionsschritte im Stack
% abgearbeitet werden m�ssen.
% MATLAB hat standardm�ssig eine maximale Rekursionstiefe von 500. Somit
% l�sst sich rekursiv nur die Fakult�t von 499 berechnen.

%{

% recursiv solution
function [y] = faculty(n)
% FAK y = fak(n) berechnet die Fakult�t von n
% fak(n) = n * fak(n -1), fak(0) = 1
% Fehler, falls n < 0 oder nicht ganzzahlig
    if n < 0 || fix(n) ~= n
    error('ERROR: FAK ist nur f�r nicht-negative, ganze Zahlen definiert')
    end

    if n <= 1
        y = 1;
    else
        y = n*faculty(n-1);
    end
end

%}

