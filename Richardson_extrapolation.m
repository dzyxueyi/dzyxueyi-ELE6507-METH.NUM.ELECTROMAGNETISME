clc
clear all;
% h=[2 1 0.5 0.25 0.125];% One-to-one correspondence with E(m,:)
E=zeros(5,5);
E(1,:)=[26.8285 16.272 12.6726 11.1832 10.5062];
for m=1:1:5
    for n=1+m:1:5
        E(m+1,n)=[(2^m)*E(m,n)-E(m,n-1)]/(2^m-1);
    end 
end