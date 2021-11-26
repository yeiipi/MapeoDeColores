function [R,G,B] = funCol2(t)

R = @(t) 3 .* cos(t) + t;
G = @(t) 2.*sin(t)+t;
B = @(t) abs(t-100);

% ===========
R = uint8(R);
G = uint8(G);
B = uint8(B);

end

