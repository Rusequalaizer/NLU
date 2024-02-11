system("cls");

needToSave = 1;

printf("---------- Task 1 ----------\n");

printf("MATRIX:\n");
A = [
  1 1 1;
  1 2 4;
  1 3 9
]
printf("VECTOR:\n");
b = [6; 5; 2]
printf("X = A^(-1) * b:\n");
X = A ^ (-1) * b

x = -3:0.1:5;
y = get_y(X, x);
x_points = [1, 2, 3];

figure(1);
plot(x, y, x_points, transpose(b), "+");
title("Laboratory work 1, Task 1");
xlabel("X");
ylabel("Y");
grid on;

printf("---------- Task 2 ----------\n");

printf("MATRIX:\n");
N = 7;
x_points = 0:1:N-1;
for i = 1:1:N
	for j = 1:1:N
		A(i, j) = x_points(i) ^ (j - 1);
	endfor
endfor
A
printf("VECTOR:\n");
b = [1; 3; 2; 1; 3; 2; 1]
printf("X = A^(-1) * b:\n");
X = A ^ (-1) * b
printf("\n");
x = -1:0.1:7;
y = get_y(X, x);

figure(2);
plot(x, y, x_points, transpose(b), "+");
title("Laboratory work 1, Task 2");
xlabel("X");
ylabel("Y");
grid on;

