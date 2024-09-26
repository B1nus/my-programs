#include <stdio.h>
#include <stdbool.h>

int factorial(int n);

int main() {
    int product = 1;

    while(true) {
        int n;
        int r;
        printf("Size of the set (n): ");
        scanf("%i", &n);
        printf("Amount of selected elements (r): ");
        scanf("%i", &r);

        int ncr = factorial(n) / factorial(r) / factorial(n - r);
        printf("%d choose %d is %d\n", n, r, ncr);

        product *= ncr;
        if (product != ncr) {
            printf("Accumulated product is %d\n", product);
        }
    }
}

int factorial(int n) {
    int product = 1;
    for (int i = 1; i <= n; i++) {
        product *= i;
    }
    return product;
}
