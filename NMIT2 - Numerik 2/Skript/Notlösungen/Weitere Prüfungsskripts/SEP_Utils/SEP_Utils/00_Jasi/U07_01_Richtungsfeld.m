f = @(t, yt) (-1/2) .* yt .* t.^2; % Funktion angeben, mit Punkt!
xmin = 0;
xmax = 3;
ymin = 0;
ymax = 3;
hx = 1;
hy = 1;
richtungsfeld(f, xmin, xmax, ymin, ymax, hx,hy)

% Funktion die das Richtungsfeld einer Differenzialgleichung in den
% Intervallen [xmin, xmax] mit Schrittweite hx f�r die X-Achse und 
% [ymin, ymax] mit Schrittweite hy f�r die Y-Achse
% f = Differenzialgleichung, muss mit Vektoren umgehen k�nnen (. nicht
% vergessen)
% xmin = Intervall-Startwert f�r die X-Achse
% xmax = Intervall-Endwert f�r die X-Achse
% ymin = Intervall-Startwert f�r die Y-Achse
% ymax = Intervall-Endwert f�r die Y-Achse
% hx = Schrittweite in X-Richtung
% hy = Schrittweite in Y-Richtung
%
% Aufruf:
% richtungsfeld(@(t, yt) t.^2 + 0.1 * yt, -1.5, 1.5, 0, 3, 0.2, 0.2)
function [ ] = richtungsfeld(f, xmin, xmax, ymin, ymax, hx, hy)
    % Koordinaten f�r die Punkte erzeugen
    [X,Y] = meshgrid(xmin:hx:xmax, ymin:hy:ymax);

    % Steigung an jedem Punkt berechnen
    Ydiff = f(X,Y)

    % Richtungsfeld einzeichnen. 
    dim = size(Ydiff);
    quiver(X,Y,ones(dim(1), dim(2)), Ydiff);
end

