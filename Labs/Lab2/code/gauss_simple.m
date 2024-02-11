function X = gauss_simple (A, b)
	[N N] = size(A);
	A = [A b];
	for i = 1:N-1
		A(i+1:N, i:N+1) -= A(i+1:N, i) * A(i, i:N+1) / A(i, i);
	endfor
	b = A(:, N+1);
	A = A(1:N, 1:N);
	X = backsub(A, b);
endfunction
