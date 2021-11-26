function [R,G,B] = funCol3(t)

R = abs(t-30);
G = t ./ pi;
B = t;

% ===========
R = uint8(R);
G = uint8(G);
B = uint8(B);

end

