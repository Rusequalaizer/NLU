function C = lu_gauss1 (A)
    [N N] = size(A);
    for k = 1:N-1
        rows = k+1:N;
        A(rows, k) = A(rows, k)/A(k, k);
        A(rows, rows) = A(rows, rows) - A(rows, k) * A(k, rows);
    endfor
    C = A;
endfunction
