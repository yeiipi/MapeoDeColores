clc; close all; clear all
I = imread("./media/dos.jpg");

IR = I(:,:,1);
IG = I(:,:,2);
IB = I(:,:,3);

IR = double(I(:,:,1));
IG = double(I(:,:,2));
IB = double(I(:,:,3));

IM =  double(IR);
% IM =  double( ( IR + IB + IG ) ./ 3 );



% R = @(t) abs(t .* sin( t ) - 100);
% G = @(t) abs(t .* cos( t ) - 100);
% B = @(t) abs(t-100);

% R = @(t) abs(t .* sin( t ) );
% G = @(t) abs(t .* cos( t ) );
% B = @(t) abs(t .* sin( t ) );

% R = @(t) abs(t .* cos( t ) + t);
% G = @(t) abs(t .* sin( t ) + t);
% B = @(t) t;

% R = @(t) funCol1(t);
% G = @(t) t.*cos(t);
% B = @(t) t.*sin(t);

a = 2;
b = 1;
c = 2;
d = 1;
j = 3;
k = 3;


% R = @(t) t.*tan(t);
% G = @(t) t.*cot(t);
% B = @(t) t;

R = @(t) t;
G = @(t) t.*cos(t);
B = @(t) t.*sin(t);


R(G(B(IR)))


IRN = R(IR);
IGN = G(IRN);
IBN = B(IGN);

IRN = uint8(IRN);
IGN = uint8(IGN);
IBN = uint8(IBN);


% [IRN,IGN,IBN] = funCol2(IM);

L = 0:0.001:255;

L = L';

T = cat(3,IRN,IGN,IBN);
% T = cat(1,IRN);

figure
imshow(T)

map = [R(L)./max(R(L)) G(L)./max(G(L)) B(L)./max(B(L))];
figure, scatter3(map(:,1), map(:,2), map(:,3),4,map)



