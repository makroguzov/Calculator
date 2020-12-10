//
//  main.m
//  Calculator
//
//  Created by Валерий Макрогузов on 09.12.2020.
//

#import <Foundation/Foundation.h>



BOOL isEnglishLetter(char letter) {
    return (letter >= 0x41 && letter <= 0x5A) || (letter >= 0x61 && letter <= 0x7A);
}

void checkLetter() {
    
    char letter;
    
    printf("Enter english letter: ");
    scanf("%c", &letter);
    
    NSLog(isEnglishLetter(letter) ? @"You right, this is english letter." : @"Dont try to deceive me!!!");
}


double summ(int v1, int v2) {
    return v1 + v2;
}

double multiply(int v1, int v2) {
    return v1 * v2;
}

double difference(int v1, int v2) {
    return v1 - v2;
}

double mod(int v1, int v2) {
    return v1 % v2;
}

double division(int v1, int v2) {
    return v1 / v2;
}

double compute(int v1, int v2, char op) {
    switch (op) {
        case '*':
            return multiply(v1, v2);
            break;
            
        case '/':
            return division(v1, v2);
            break;
            
        case '%':
            return mod(v1, v2);
            break;
            
        case '+':
            return summ(v1, v2);
            
        case '-':
            return difference(v1, v2);
        
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
        //startCalcApp();
        checkLetter();
    }
    return 0;
}


