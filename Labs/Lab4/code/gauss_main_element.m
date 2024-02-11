function X = gauss_main_element(A, B)
    % Вход - A - невырожденная матрица размера N x N
    %        B - матрица размера N x 1
    % Выход - X - матрица размера N x 1, содержащая решение AX = B
    % Инициализация X и временное сохранение матрицы C
    [N N] = size(A);
    X = zeros(N, 1);
    C = zeros(1, N+1);
    % Вид расширенной матрицы: Aug = [A|B]
    Aug = [A B];
    R = 1:N;
    for p = 1:N-1
        u = 0;
        s = 0;
        t = 0;
        for i = p:N
            for j = p:N
                if abs(Aug(i, j)) > u
                    u = abs(Aug(i, j));
                    s = i;
                    t = j;
                endif
            endfor
        endfor
        C = Aug(p, :);
        Aug(p, :) = Aug(s, :);
        Aug(s, :) = C;
        X = Aug(:, p);
        Aug(:, p) = Aug(:, t);
        Aug(:, t) = X;
        a = R(p);
        R(p) = R(t);
        R(t) = a;
        % Процесс исключения для столбца p
        for k = p+1:N
            m = Aug(k, p)/Aug(p, p);
            Aug(k, p:N+1) = Aug(k, p:N+1) - m * Aug(p,p:N+1);
        endfor
    endfor
    % Решение системы с верхней треугольной матрицей
    Y = backsub(Aug(1:N, 1:N), Aug(1:N, N+1));
    for i = 1:N
		X(R(i)) = Y(i);
    endfor
endfunction

