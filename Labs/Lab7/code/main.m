system("cls");

format short

printf("EIGENVALUES:\n");
L = [
	[1 0 0];
	[0 2 0];
	[0 0 3]
]
printf("EIGENVECTORS:\n");
V = [
	[1 0 1];
	[-1 1 1];
	[0 -1 1]
]
printf("MATRIX CORRESPONDING TO THE SPECIFIED EIGENVALUES AND EIGENVECTORS:\n");
A = V*L*V^(-1)
printf("EIG CHECK:\n");
[V L] = eig(A);
L
V

#{
собственные значения такие же и поменялись местами
собственные векторы такие же с точностью до константы и поменялись местами
#}

printf("A REAL MATRIX WHOSE EIGENVALUES ARE IMMATERIAL:\n");
A = [
	[1 1];
	[-1 1]
]
[V L] = eig(A);
printf("EIGENVALUES:\n");
L
printf("EIGENVECTORS:\n");
V

#{
Связаны тем, что они комплексно сопряженные
При комплексном сопряжении коэффициентов многочлена его значение не изменится
#}

printf("A MATRIX WITH ONE EIGENVALUE AND ONE EIGENVECTOR:\n");
A = [
	[1 1 0];
	[0 1 1];
	[0 0 1]
]
[V L] = eig(A);
printf("EIGENVALUES:\n");
L
printf("EIGENVECTORS:\n");
V

printf("\n\nTO GET A MATRIX HAVING THE PROPERTIES OF MATRIX \"A\",\nIT IS ENOUGH TO MULTIPLY MATRIX \"A\" BY AN ARBITRARY\nMATRIX \"R\" HAVING A SIMILAR DIMENSION ON THE LEFT AND\nTHE INVERSE MATRIX \"R^(-1)\" AS A PAIR:\nM = R*A*R^(-1)\n");

#{
Алгебраическая кратность равна 3 и связана с собственными значениями
Геометрическая кратность равна 1 и связана с векторами
Если шеометрическая кратность равна алгебраической то матрицу можно привести к диагональному виду
Не является простым так как алгебраическая кратность != 1б не является и полупростым т.к. Ак != Гк
Вывод eig гам даст собственный вектор и комплексные аналоги собственного вектора
#}

