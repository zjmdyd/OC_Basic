//
//  String.m
//  OC_Basic
//
//  Created by YunTu on 15/9/2.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "String.h"

@implementation String

char *obtain_c_string() {
    return "hello";
}

+ (void)testStringClass {
    NSLog(@"foo class = %@", @"foo".class);
    NSLog(@"%s class = %@", obtain_c_string(), @(obtain_c_string()).class);
}

- (id)say {
    NSLog(@"%s", __func__);
    return 0;
}

@end
