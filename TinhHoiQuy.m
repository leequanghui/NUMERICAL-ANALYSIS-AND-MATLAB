function [a1, a0] = TinhHoiQuy(mangX, mangY)
    n = length(mangX);
    sumX = 0;
    sumY = 0;
    sumXY = 0;
    sumX2 = 0;
   
    for i = 1:n
        sumX = sumX + mangX(i);
        sumY = sumY + mangY(i);
        sumXY = sumXY + mangX(i)*mangY(i);
        sumX2 = sumX2 + mangX(i)*mangX(i);
    end
    xm = sumX/n;
    ym = sumY/n;
    a1 = (n*sumXY- sumX*sumY)/(n*sumX2- sumX*sumX);
    a0 = ym - a1*xm;
    
end