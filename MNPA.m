R1 = 1;
C = 0.25;
R2 = 2;
L = 0.2;
R3 = 10;
a = 100;
R4 = 0.1;
R0 = 1000;
F = zeros(8,8);
G1 = 1/R1 + 1/R2;
G2 = -a*1/R3*(1/R4 + 1/R5);
G3 = 1/R4 + 1/R5;
G = [1/R1 -1/R1 0 0 0 1 0;
    -1/R1 G1 0 0 0 0 1;
    0 0 -1/R3 0 0 0 -1;
    0 0 G2 1/R4 -1/R4 0 0;
    0 0 0 -1/R4 G3 0 0;
    0 1 -1 0 0 0 0;
    1 0 0 0 0 0 0];
Cvals = [C -C 0 0 0 0 0;
        -C C 0 0 0 0 0;
        0 0 0 0 0 0 0;
        0 0 0 0 0 0 0;
        0 0 0 0 0 0 0;
        0 0 0 0 0 0 -L;
        0 0 0 0 0 0 0];
Vline = linspace(-10, 10, 100);
count = 1;
V0 = zeros(100,1);
V3 = zeros(100,1);
for i=1:100
    F() = i;
    V = G\F;
    V0(i) = V(5);
    V3(i) = V(3);
    
end

plot(real(V0),Vline)



    
    