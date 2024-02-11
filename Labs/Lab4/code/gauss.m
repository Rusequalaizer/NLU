function X = gauss(A, B)
    % Вход - A - невырожденная матрица размера N x N
    %        B - матрица размера N x 1
    % Выход - X - матрица размера N x 1, содержащая решение AX = B
    % Инициализация X и временное сохранение матрицы C
    [N N] = size(A);
    X = zeros(N, 1);
    C = zeros(1, N+1);
    % Вид расширенной матрицы: Aug = [A|B]
    Aug = [A B];
    for p = 1:N-1
        % Частный выбор главного элемента для столбца p
        [Y, j] = max(abs(Aug(p:N, p)));
        % Меняем местами строки p и j
        C = Aug(p,:);
        Aug(p,:) = Aug(j+p-1, :);
        Aug(j+p-1, :) = C;
        % Процесс исключения для столбца p
        for k = p+1:N
            m = Aug(k, p)/Aug(p, p);
            Aug(k, p:N+1) = Aug(k, p:N+1) - m * Aug(p,p:N+1);
        endfor
    endfor
    % Решение системы с верхней треугольной матрицей
    X = backsub(Aug(1:N, 1:N), Aug(1:N, N+1));
endfunction

