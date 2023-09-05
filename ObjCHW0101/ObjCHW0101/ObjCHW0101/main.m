//
//  main.m
//  ObjCHW0101
//
//  Created by Admin on 05.09.2023.
//

#import <Foundation/Foundation.h>
#import <math.h>

void quadraticEquation(CGFloat a, CGFloat b, CGFloat c){
    
    CGFloat discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        CGFloat x1 = (-b + sqrt(discriminant)) / (2 * a);
        CGFloat x2 = (-b - sqrt(discriminant)) / (2 * a);
        
        NSLog(@"Уравнение имеет два корня:");
        NSLog(@"x1 = %lf", x1);
        NSLog(@"x2 = %lf", x2);
    } else if (discriminant == 0) {
        CGFloat x = -b / (2 * a);
        
        NSLog(@"Уравнение имеет один корень:");
        NSLog(@"x = %lf", x);
    } else {
        NSLog(@"Уравнение не имеет действительных корней.");
    }
}

void printMaxOfNumbers(CGFloat number1, CGFloat number2, CGFloat number3) {
    CGFloat maxNumber = number1;
    
    if (number2 > maxNumber) {
        maxNumber = number2;
    }
    
    if (number3 > maxNumber) {
        maxNumber = number3;
    }
    
    NSLog(@"Максимальное число: %lf", maxNumber);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Решить квадратное уравнение x^2 – 8x + 12 = 0:");
        quadraticEquation(1, -8, 12);
        NSLog(@"Решить квадратное уравнение 12x^2 – 4x + 2 = 0:");
        quadraticEquation(12, -4, 2);
        NSLog(@"Решить квадратное уравнение x^2 – 100x - 2 = 0:");
        quadraticEquation(1, -100, -2);
        printMaxOfNumbers(-5, 67, 9);
                
    }
    return 0;
}
