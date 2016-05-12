//
//  ViewController.m
//  FibonacciPlus
//
//  Created by Michael Hoffman on 5/11/16.
//  Copyright © 2016 Here We Go. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Find the first 50 Fibonacci numbers
    
    NSInteger zero = 0;
    NSInteger one = 1;
    NSInteger dividend;
    NSInteger divisor = 5;
    
    //Created an array populated with "0" and "1" so the code will be able to follow the pattern for generating Fibonacci numbers
    NSArray *startArray = @[[NSNumber numberWithInteger:zero], [NSNumber numberWithInteger:one]];
    
    NSMutableArray *fibonacciArray = [NSMutableArray new];
    NSMutableArray *sortedFibonacci = [NSMutableArray new];
    
    [fibonacciArray addObjectsFromArray:startArray];
    
    //The program is to find the first 50 Fibonacci numbers,
    // the condition "i <" is set to 48 because the startArray already contains two numbers: 0 and 1).
    for (NSInteger i=0; i<48; i++)
    {
        //Represents the Fibonacci pattern: last number plus the number preceding it
        NSInteger sequence = [[fibonacciArray lastObject]integerValue] + [[fibonacciArray objectAtIndex:[fibonacciArray count]-2]integerValue];
        
        [fibonacciArray addObject:[NSNumber numberWithInteger:sequence]];
        
        //Only find the Fibonacci numbers that are cleanly divisible by a specific number
        //The objectAtIndex is "i + 2" to capture all 50 numbers genrated by the code
        dividend = [[fibonacciArray objectAtIndex:i+2]integerValue];
        if (dividend % divisor == 0)
        {
            [sortedFibonacci addObject:[NSNumber numberWithInteger:dividend]];
        }
    }
    
    NSLog(@"%@", fibonacciArray);
    NSLog(@"%@", sortedFibonacci);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
