function [M] = funCol1(t)

f1 = t.*cos(t ./ 2);
f2 = t .* 2;
f3 = t;


M = f2 .* (t <= 85) + f3 .* ( t > 85 ) .* ( t < 170 ) + f1 .* ( t >= 170 );
end

