function A = get_A (N)
    for i = 1:N
        for j = 1:N
            A(i, j) = i ^ (j - 1);
        endfor
    endfor
endfunction
