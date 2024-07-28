disp('Lab 5')
pkg load optim

f = [6; 3; 1.5; 6; 3; 2; 4; 2; 8];

Aeq = [1, 0, 0, 1, 0, 0, 1, 0, 0; 0, 1, 0, 0, 1, 0, 0, 1, 0; 0, 0, 1, 0, 0, 1, 0, 0, 1];


beq = [300; 100; 100];
A = [1/5, 1/10, 1/20, 0, 0, 0, 0, 0, 0; 0, 0, 0, 1/1.7, 1/3.3, 1/5, 0, 0, 0; 0, 0, 0, 0, 0, 0, 1/5, 1/10, 1/2.5];
b = [40; 60; 30];


lb = zeros(9, 1);

ub = [];

[x, fval] = linprog(f, A, b, Aeq, beq, lb, ub);
disp(x);
disp(fval);