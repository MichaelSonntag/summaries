% KONDITIONSZAHL BERECHNUNG F�R VEKTOREN UND MATRIZEN
%
% INPUT
% A-Matrix anpassen
%
% OUTPUT
% c = Konditionszahl des Vektors oder der Matrix
%
% BEISPIELAUFRUF
% [c] = II_Rechnerarithmetik_KonditionszahlVektorMatrix_brunnpa7

function [c] = II_Rechnerarithmetik_KonditionszahlVektorMatrix_brunnpa7

    format long

    % Vektor oder Matrix definieren. Aufgepasst, wenn die Konditionszahl einer
    % Funktion berechnet werden soll, muss man den prozeduralen Weg gehen im
    % anderen Skript
    A = [10^-5 10^-5; 2 3];

    % Konditionszahlberechnung durchf�hren. Immer 1 als 2. Parameter der
    % cond-Funktion �bergeben f�r korrekte Berechnung der 1. Norm;
    c = cond(A,1);
end