//
//  main.m
//  OC_Basic
//
//  Created by YunTu on 15/8/29.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "String.h"
#import "BasicDataType.h"
#import "NSAssertUsage.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [String testStringClass];
        
        [BasicDataType floatType];
        [NSAssertUsage nsAssertUsage];
    }
    return 0;
}
