system("cls");

format short

printf("INITIALIZING A:\n");
A = randi(5, 5)

[Q1 R1] = qr_house(A);
printf("RESULT OF QR_HOUSE:\n");
Q1
R1
printf("Q1 * R1:\n");
Q1 * R1

printf("RESULT OF QR:\n");
[Q2 R2] = qr(A);
Q2
R2
printf("Q2 * R2:\n");
Q2 * R2

