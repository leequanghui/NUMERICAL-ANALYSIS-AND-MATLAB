function [nghiem,solanlap] = lap(fp,a,b,saiso)
     x1 = b;
     x0 = a;
     e = abs(x1 - x0);
     solanlap = 0;
     while e > saiso
     solanlap = solanlap + 1;
     x1 = fp(x0);
     e = abs(x1 - x0);
     x0 = x1;
     end
     nghiem = x1;
end