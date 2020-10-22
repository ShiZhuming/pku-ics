
int a[2][2] = {1,1,1,1};

void ij() {
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            a[i][j]++;
}

void ji() {
    for (int j = 0; j < 2; j++)
        for (int i = 0; i < 2; i++)
            a[i][j]++;
}