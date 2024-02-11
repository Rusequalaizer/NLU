function y = get_y (X, x)
    [Lx, Cx] = size(x);
    [LX, CX] = size(X);
    y = zeros(Lx, Cx);
    for i = 1:LX
        y += X(i) * x .^ (i - 1);
    endfor
endfunction
