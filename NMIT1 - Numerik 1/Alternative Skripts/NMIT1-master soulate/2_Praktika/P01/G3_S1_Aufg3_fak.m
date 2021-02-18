function y = fak(n)
    if n < 0 || fix(n) ~= n
  error(['ERROR: FAK ist nur f�r nicht-negative, ganze Zahlen definiert'])
    end
    y = 1;
    for x = 1:n
        y = y*x;
    end
end

%Fazit

%Die Variante mit der rekursiven Berechnung ging wesentlich l�nger und wir
%kommen mit unserem Laptop max. auf 69'000!

%Mit der for-Schlaufe gelingt uns eine Berechnung von 10 Mia!

%Bei der rekursiven Variante muss jedesmal bis zur Wurzel zur�ckgerechnet
%werden und dann wieder bis zu n hoch. Es werden keine Variablen
%gespeichert.
%Bei der for-Schlaufe kann das Zwischenergebnis abgespeichert werden,
%sodass direkt multipliziert werden kann.