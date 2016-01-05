//
//  BasicDataType.m
//  OC_Basic
//
//  Created by YunTu on 15/9/14.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "BasicDataType.h"

@implementation BasicDataType

+ (void)floatType {
    int i = 0.0;
    if (i < FLT_EPSILON) {
        NSLog(@"i 等于 0");
    }
}

@end
