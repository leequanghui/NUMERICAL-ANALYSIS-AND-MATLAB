function result = NewtonInterpolation_ns(xa, ya, x)
    n = length(xa);
    d = ya;
    for i = 1:n
        for j = 1:(i-1)
            d(i) = (d(j)-d(i))/(xa(j)-xa(i));
        end
    end
    n = length(d);
    result = d(n);
    for i = (n-1):-1:1
        result = result*(x-xa(i))+d(i);
    end
end
