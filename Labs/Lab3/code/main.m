system("cls");


delta_time = 0;
n = 2;
while (delta_time < 10)
    A = randi(n, n);
    tic();
    lu_gauss1(A);
    delta_time = toc();
    n = n + 100;
endwhile
printf(
    "LU_GAUSS_1:\n\tdelta_time = %d sec\n\twith size(A) = (%d, %d)\n\n",
    delta_time,
    n,
    n
);


delta_time = 0;
n = 2;
while (delta_time < 10)
    A = randi(n, n);
    tic();
    lu_gauss2(A);
    delta_time = toc();
    n = n + 100;
endwhile
printf(
    "LU_GAUSS_2:\n\tdelta_time = %d sec\n\twith size(A) = (%d, %d)\n\n",
    delta_time,
    n,
    n
);


delta_time = 0;
n = 2;
while (delta_time < 10)
    A = randi(n, n);
    tic();
    lu_gauss3(A);
    delta_time = toc();
    n = n + 100;
endwhile
printf(
    "LU_GAUSS_3:\n\tdelta_time = %d sec\n\twith size(A) = (%d, %d)\n\n",
    delta_time,
    n,
    n
);

