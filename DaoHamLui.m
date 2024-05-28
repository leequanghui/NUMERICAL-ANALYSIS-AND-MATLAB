function y = DaoHamLui(f, x0, h, ss, step) % step dùng để thay thế cho h trong trường hợp f là mảng
    if ss == "O(h)"
        y = ((f(x0)-f(x0-h))/h)/step;
    elseif ss == "O(h^2)"
        y = ((3*f(x0)-4*f(x0-h)+f(x0-2*h))/(2*h))/step;
    end
end
