clc;

format long long


printf("GAUSS:\n");
N = [3, 7, 11];
for i = N
    test = ones(i, 1);
    A = get_A(i);
    b = get_b(i);
    X = gauss(A, b);
    if X == test
        printf("X == test: { test = [1] * N : N = %d }\n", i);
    else
        printf("EXCEPTION: X != test :\n");
        X
        test
    endif
endfor

printf("GAUSS_MAIN_ELEMENT: \n");
N = [3, 7, 11];
for i = N
    test = ones(i, 1);
    A = get_A(i);
    b = get_b(i);
    X = gauss_main_element(A, b);
    if X == test
        printf("X == test: { test = [1] * N : N = %d }\n", i);
    else
        printf("EXCEPTION: X != test :\n");
        X
        test
    endif
endfor

