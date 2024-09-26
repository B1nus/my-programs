#include <stdio.h>
#include <stdbool.h>

long ranged_factorial(int start, int end);
long factorial(int n);

int main() {
    long product = 1;

    while(true) {
        int n;
        int r;
        printf("n: ");
        scanf("%i", &n);
        printf("r: ");
        scanf("%i", &r);

        long ncr = ranged_factorial(n - r + 1, n) / factorial(r);
        printf("%d choose %d is %ld\n", n, r, ncr);

        product *= ncr;
        if (product != ncr) {
            printf("Accumulated product is %ld\n", product);
        }
    }
}

long factorial(int n) {
    return ranged_factorial(1, n);
}

long ranged_factorial(int start, int end) {
    long product = 1;
    for (int i = start; i <= end; i++) {
        product *= i;
    }
    return product;
}
