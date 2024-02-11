function [Q R] = qr_house (A)
	[N N] = size(A);
	D = zeros(N, N);
	Q = eye(N, N);

	for j = 1:N-1
		s1 = A(:, j);
		s = A(j:N, j);
		norma = sqrt(s' * s);
		k = zeros(N, 1);
		k(j) = norma * (-sign(s(1)));
		u = s1 - k;
		for i = 1:j-1
			u(i) = 0;
		endfor
		norma2 = sqrt(u' * u);
		w = u / norma2;
		P = eye(N, N) - 2 * w * w';
		A = P * A;
		Q = P * Q;
	endfor

	R = A;
	Q = Q';

	for i = 1:N
		for j = 1:N
			if abs(R(i, j)) <=1e-10
				R(i, j) = 0;
			endif
		endfor
	endfor

	[Q R];
endfunction
