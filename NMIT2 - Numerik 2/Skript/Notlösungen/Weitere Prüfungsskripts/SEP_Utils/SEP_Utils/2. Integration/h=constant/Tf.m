function [ITf]  =   Tf(a, b, f)
% Test:  [ITf]  =   Tf(2, 4, @(x)1/x)
% Result:       =   0.750000000000000
% Zweck: Integrationsberechnung anhand der Trapez-Regel
% Params:
% a:    Untere Integrationsgrenze
% b:    Obere Integrationsgrenze
% f:    Zu integrierende Funktion
%
% Algorithmus:
% Es wird zwischen den Funktionswerten der Intervalle
% eine Gerade gezogen, sodass sich ein Trapez als Fl�chenk�rper ergibt.

% 1) Funktionswerte auswerten
% 2) Trapez Formel: ((a + b) / 2) * H�he
% 3) H�he ist in diesem Fall die Intervallbreite

% Berechnung Integral
ITf = (f(a) + f(b)) * 1/2 * (b - a);
