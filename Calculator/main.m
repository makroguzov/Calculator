//
//  main.m
//  Calculator
//
//  Created by Валерий Макрогузов on 09.12.2020.
//

#import <Foundation/Foundation.h>


double compute(int v1, int v2, char op) {
    switch (op) {
        case '*':
            return v1 * v2;
            break;
            
        case '/':
            return v1 / v2;
            break;
            
        case '%':
            return v1 % v2;
            break;
            
        case '+':
            return v1 + v2;
            
        case '-':
            return v1 - v2;
        
        default:
            return 0;
            break;
    }
}

void startCalcApp() {
    
    int firstVal;
    int secondVal;
    
    char operation;
    
    printf("Enter value 1:");
    scanf("%i", &firstVal);
 
    printf("Enter value 2:");
    scanf("%i", &secondVal);

    printf("Enter operation:");
    scanf("%s", &operation);
    
    double result = compute(firstVal, secondVal, operation);
    
    NSLog(@"%i %c %i = %f", firstVal, operation, secondVal, result);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        startCalcApp();
    }
    return 0;
}


