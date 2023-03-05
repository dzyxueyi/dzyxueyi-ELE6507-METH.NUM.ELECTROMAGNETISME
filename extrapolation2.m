clc
clear all;
ext=7;
for n=1:ext
    M(n)=2^(n-1);
end
int=zeros(2,ext);
int(1,:)=M;
for j=1:ext
    for i=1:M(j)
        int(2,j)=int(2,j)+(2/(M(j)^3))*((i-0.5)^2)*((1-((i-0.5)^2)/(M(j)^2))^(-0.5));
    end
end
E=zeros(ext,ext);
E(1,:)=int(2,:)
for m=1:ext
    for n=1+m:1:ext
        E(m+1,n)=[(2^m)*E(m,n)-E(m,n-1)]/(2^m-1);
    end 
end