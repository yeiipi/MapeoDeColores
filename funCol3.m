function [M] = funCol3(t)

bajos = t ./ 1.5;
medios =  t;
altos = t .* 1.5;

M = bajos .* (t <= 85) + medios .* ( t > 85 ) .* ( t < 170 ) + altos .* ( t >= 170 );
end

