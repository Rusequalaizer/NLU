system("cls");

format long

printf("*" * 10);

printf("MATRIX:\n");
A = [
	[4 3 2 1];
	[3 4 3 2];
	[2 3 4 3];
	[1 2 3 4]
]
printf("FIND EINGENVALUES WITH:\n");
epsilon = 10 ^ (-7)
printf("EIGENVALUES BY JACOBI1():\n");
L = jacobi1(A, epsilon)
printf("EIGENVALYES BY EIG():\n");
L = eig(A)


for i = 1:40
	for j = 1:40
		if i == j
			A(i, j) = cos(sin(i+j));
		endif
		if i != j
			A(i, j) = i + i*j + j;
		endif
	endfor
endfor
printf("MATRIX: A = {a_{i, j}} (too big matrix)\n");
printf("FIND EINGENVALUES WITH:\n");
epsilon = 10 ^ (-7)
printf("EIGENVALUES BY JACOBI1():\n");
D = jacobi1(A, epsilon)
printf("EIGENVALYES BY EIG():\n");
D = eig(A)

printf("MATRIX:\n");
A = [
	[4 3 2 1];
	[3 4 3 2];
	[2 3 4 3];
	[1 2 3 4]
]
printf("FIND EINGENVALUES \"L\" & EIGENVECTORS \"V\" WITH:\n");
epsilon = 10 ^ (-7)
[V L] = jacobi2(A, epsilon);
printf("EIGENVALUES BY JACOBI2():\n");
L
printf("EIGENVECTORS BY JACOBI2():\n");
V
[V L] = eig(A);
printf("EIGENVALUES BY EIG():\n");
L
printf("EIGENVECTORS BY EIG():\n");
V

printf("MATRIX:\n");
A = [
	[4 3 2 1];
	[3 4 3 2];
	[2 3 4 3];
	[1 2 3 4]
]
printf("FIND EINGENVALUES WITH:\n");
epsilon = 10 ^ (-7)
L = jacobi3(A, epsilon);
printf("EIGENVALUES BY JACOBI3():\n");
L
L = eig(A);
printf("EIGENVALUES BY EIG():\n");
L

