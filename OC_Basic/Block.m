//
//  Block.m
//  OC_Basic
//
//  Created by YunTu on 15/8/29.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "Block.h"

@implementation Block

- (instancetype)init {
    self = [super init];
    if (self) {
        //
        NSLog(@"sum = %d", getSum(10, 20));
        //
        Product p = ^(int i, int j){
            return i * j;
        };
        NSLog(@"p = %d", p(10, 20));
        
        Product d = ^(int i, int j) {
            return i / j;
        };
        NSLog(@"d = %d", d(100, 20));
        
        // Blocks可以访问局部变量，但是不能修改。
        /*
         int result = 0;
         Product r = ^(int i, int j){
         result = i;             //报错 Vaiable is not assignable
         return i - j;
         };
         */
        __block int result = 0;
        Product r = ^(int i, int j){
            result = i;             //报错 Vaiable is not assignable
            return i - j;
        };
        
        NSLog(@"r = %d\n", r(100, 50));
        
        /*****      ******/
        /*
         int number = 10;
         int (^add)(int) = ^(int a) {
         return number + a;
         };
         number = 5;                     //number改变      不会导致block里面的number发生改变
         NSLog(@"result = %d", add(5));  //  result = 15
         
         */
        __block int number = 10;
        int (^add)(int) = ^(int a) {
            return number + a;
        };
        number = 5;                     //number改变      会导致block里面的number发生改变
        NSLog(@"result = %d", add(5));  //  result = 10
        
        void (^nextBlock)(id) = [@"20" copy];
        nextBlock(@"10");
    }
    
    return self;
}

@end
