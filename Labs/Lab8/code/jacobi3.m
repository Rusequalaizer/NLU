function L = jacobi3(A, epsilon)
	% Вход - A - матрица размера NxN
	%        epsilon - допустимая погрешность
	% Выход - D - диагональная матрица собственных значений размера NxN
	% Инициализация D и параметров
	D = A;
	[N N] = size(A);
	state = true;

	while (state == true)
		for p = 1:N-1
			for q = p+1:N
				if (abs(D(p, q)) >= epsilon)
					state = false;
					% Обнуление Dpq и Dqp
					theta = (D(q, q) - D(p, p))/(2*D(p,q));
					if (theta > 0)
						t = 1/(theta+sqrt(theta^2+1));
					else
						t = -1/(-theta+sqrt(theta^2+1));
					end
					c = 1/sqrt(t^2 + 1);
					s = c * t;
					R = [c s; -s c];
					D([p q], :) = R'*D([p q], :);
					D(:, [p q]) = D(:, [p q])*R;
				endif
			endfor
		endfor
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

