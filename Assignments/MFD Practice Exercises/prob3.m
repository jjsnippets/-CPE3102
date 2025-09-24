
clear
clc

syms X(s) F(s) G(s)

x2 = det([1, F(s), 0; ...
         -1, 0, -2*s; ...
          0, -0, 4*s+3])
fs = det([1, -1, 0; ...
        -1, 2*s+1, -2*s; ...
        0, -2, 4*s+3])

G = X(s)/F(s) == simplify(x2/(fs * F(s)))
pretty(G)