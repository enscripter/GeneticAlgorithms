clear all; close all; clc

imax = 100; x=1; allx=zeros(1,imax);
for i=1:imax
    x=cos(x);
    allx(i)=x;
end;
err = abs(allx-x);

plot(1:imax,x,'b-',1:imax,allx,1:imax,err,'-r');