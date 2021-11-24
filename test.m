clc; close all; clear all
I = imread("./media/cuatro.jpg");

IR = I(:,:,1);
IG = I(:,:,2);
IB = I(:,:,3);

IM =  double( ( IR + IB + IG ) ./ 3 );

% R = @(t) abs(t .* sin( t ) - 100);
% G = @(t) abs(t .* cos( t ) - 100);
% B = @(t) abs(t-100);

% R = @(t) abs(t .* sin( t ) );
% G = @(t) abs(t .* cos( t ) );
% B = @(t) abs(t .* sin( t ) );

% R = @(t) abs(t .* cos( t ) + t);
% G = @(t) abs(t .* sin( t ) + t);
% B = @(t) t;

R = @(t) funCol1(t);
G = @(t) t;
B = @(t) t;

IRN = uint8(R(IM));
IGN = uint8(G(IM));
IBN = uint8(B(IM));

% [IRN,IGN,IBN] = funCol2(IM);


T = cat(3,IRN,IGN,IBN);

imshow(T)