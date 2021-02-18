function [dx] = erste_Ableitung_mittels_d1_d2_d3(x,y)
    % Unter Anwendung von d1, d2, d3, kann man eine Ableitung ann�hern.
    % es werden alle drei Variante ben�tigt, da sonst einige Stellen
    % (Anfang-/Endstelle) nicht definiert sind.
    len = length(x);
    
    % Vorw�rtsdifferenz (Index beginnt bei 1)
    
    % D1f = (f(x1 + h) - f(x1))/h
    % h = x2 - x1
    dx(1) = (y(2) - y(1))/ (x(2) - x(1));
    
    % Zentrale Differenz
    % Beginnend bei 2, da die erste Stelle mittels Vorw�rtsdifferenz gel�st
    % wurde
    % bis len-1, da die letzte Stelle des Arrays mittels R�ckw�rtsdifferenz
    % gel�st wird
    for i = 2:(len-1)
        % Hier ist das Problem, dass y(x(i) + x(i+1) - x(i-1)),
        % bzw. y(x(i) - x(i+1) + x(i-1)), nicht zwingend definiert ist
        % (abh�ngig von den input arrays der Funktion)
        dx(i) = (y(x(i) + x(i+1) - x(i-1)) - y(x(i) - x(i+1) + x(i-1))) / (2*(x(i+1) - x(i-1))); 
    end

    % R�ckw�rtsdifferenz
    
    % D1f = (f(x_n) - f(x_n-1))/h
    % h = x_n - (x_n-1)
    dx(len) = (y(len) - y(len-1)) / (x(len) - x(len-1)); 
end

