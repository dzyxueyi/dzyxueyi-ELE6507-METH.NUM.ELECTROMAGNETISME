clc
clear all;
syms x m n;
m=1;%upper limit of integration
n=-1;%Lower limit of integration
Fx = @(x) x^2/((1-x^2)^0.5);
int(Fx,x,n,m)
pretty(int(Fx,x,n,m))