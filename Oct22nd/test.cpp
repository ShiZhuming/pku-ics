# include<stdio.h>

struct test
{
    char a;
    // int x;
    double y;
};

test t[10];

int main(){
    int n;
    int p[n];
    scanf("%d",&n);

    p[0] = 1;
    printf("%lu",sizeof(p));
    return 0;
}