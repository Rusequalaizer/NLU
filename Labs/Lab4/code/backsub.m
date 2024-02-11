function X = backsub(A, B)
    % Вход - A - верхняя треугольная матрица размера n x n
    %        B - матрица размера n x 1
    % Выход - X - решение системы линейных уравнений AX = B
    % Находим размер матрицы B и инициализируем X
    n = length(B);
    X = zeros(n, 1);
    X(n) = B(n)/A(n, n);
    for k = n-1:-1:1
        X(k) = (B(k) - A(k, k+1:n) * X(k+1:n))/A(k, k);
    endfor
endfunction
