function C = lu_gauss3 (A)
    [N N] = size(A);
    for k = 1:N-1
        A(k+1:N, k) = A(k+1:N, k)/A(k, k);
        for i = k+1:N
            A(i, k+1:N) = A(i, k+1:N) - A(i, k) * A(k, k+1:N);
        endfor
    endfor
    C = A;
endfunction
