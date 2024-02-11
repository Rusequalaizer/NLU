function C = lu_gauss2 (A)
    [N N] = size(A);
    for k = 1:N-1
        A(k+1:N, k) = A(k+1:N, k)/A(k, k);
        for i = k+1:N
            for j = k+1:N
                A(i, j) = A(i, j) - A(i, k) * A(k, j);
            endfor
        endfor
    endfor
    C = A;
endfunction
