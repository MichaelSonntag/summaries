function y = fakultaet_rekursiv(n)
% FAK y = fak(n) berechnet die Fakult�t von n % fak(n) = n * fak(n -1), fak(0) = 1
% Fehler, falls n < 0 oder nicht ganzzahlig
if n < 0 || fix(n) ~= n
  error(['ERROR: FAK ist nur f�r nicht-negative, ganze Zahlen definiert'])
end
if n <= 1, y = 1;
else
  y = n*fakultaet_rekursiv(n-1);
end