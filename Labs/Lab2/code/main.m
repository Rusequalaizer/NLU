system("cls");

printf("________________SYSTEM 1________________\n");
printf("MATRIX:\n");
A = [
	[2 4 -6];
	[1 5 3];
	[1 3 2]
]
printf("VECTOR b:\n");
b = [-4; 10; 5]
x = gauss_simple(A, b);
printf("VECTOR x: Ax = b:\n");
x

printf("________________SYSTEM 2________________\n");
printf("MATRIX:\n");
A = [
	[2 4 -6];
	[1 2 -1];
	[1 3 2]
]
printf("VECTOR b:\n");
b = [-4; 3; 5]
x = gauss_simple(A, b);
printf("VECTOR x: Ax = b:\n");
x

printf("________________SYSTEM 3________________\n");
k = 2:16;
epsilon = 10.^(-k);
printf("VECTOR b:\n");
b = [-4; 3; 5]
i = 1;
for k = epsilon
	printf("MATRIX:________________________________\n");
	A = [
		[(2 + k) 4 -6];
		[1 2 -1];
		[1 3 2]
	]
	x = gauss_simple(A, b);
	printf("VECTOR x: Ax = b:\n");
	x
	X1(i) = x(1);
	X2(i) = x(2);
	X3(i) = x(3);
	i++;
endfor
figure(1);
scatter(X1, epsilon);
grid on
title("FOR x_1");
xlabel("X");
ylabel("Epsilon");
figure(2);
scatter(X2, epsilon);
grid on
title("FOR x_2");
xlabel("X");
ylabel("Epsilon");
figure(3);
scatter(X3, epsilon);
grid on
title("FOR x_3");
xlabel("X");
ylabel("Epsilon");

