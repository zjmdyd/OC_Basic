//
//  NSAssertUsage.m
//  OC_Basic
//
//  Created by YunTu on 15/9/14.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "NSAssertUsage.h"

/*
    NSAssert()只是一个宏，用于开发阶段调试程序中的Bug，通过为NSAssert()传递条件表达式来断定是否属于Bug，
    满足条件返回真值，程序继续运行，如果返回假值，则抛出异常，并切可以自定义异常描述。NSAssert()是这样定义的：
 
    #define NSAssert(condition, desc)
 
    condition是条件表达式，值为YES或NO；desc为异常描述，通常为NSString。当conditon为YES时程序继续运行，为NO时，则抛出带有desc描述的异常信息。
 */
@implementation NSAssertUsage

+ (void)nsAssertUsage {
    int i = 9;
    NSAssert(i == 10, @"i 不等于10");
    MAX(10, 2);
}

@end
