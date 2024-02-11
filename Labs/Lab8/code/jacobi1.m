function L = jacobi1(A, epsilon)
	% Вход - A - матрица размера NxN
	%        epsilon - допустимая погрешность
	% Выход - D - диагональная матрица собственных значений размера NxN
	% Инициализация D и параметров
	D = A;
	[N N] = size(A);
	state = 1;
	% Вычисление строки p и столбца q наибольшего по
	% абсолютной величине элемента матрицы A, не лежащего
	% на диагонали
	[m1 p] = max(abs(D - diag(diag(D))));
	[m2 q] = max(m1);
	p = p(q);

	while (state == 1)
		% Обнуление Dpq и Dqp
		theta = (D(q, q) - D(p, p))/(2*D(p,q));
		if (theta > 0)
			t = 1/(theta+sqrt(theta^2+1));
		else
			t = -1/(-theta+sqrt(theta^2+1));
		endif
		c = 1/sqrt(t^2 + 1);
		s = c * t;
		R = [c s; -s c];
		D([p q], :) = R'*D([p q], :);
		D(:, [p q]) = D(:, [p q])*R;
		[m1 p] = max(abs(D - diag(diag(D))));
		[m2 q] = max(m1);
		p = p(q);
		if (abs(D(p, q)) < epsilon*sqrt(sum(diag(D).^2)/N))
			state = 0;
		endif
	endwhile

	D = diag(diag(D));
	[N N] = size(D);
	k = 1;

	for i = 1:N
		for j = 1:N
			if (D(i, j) != 0)
				L(k, 1) = D(i, j);
				k += 1;
			endif
		endfor
	endfor

	L = sort(L);
endfunction

