//
//  Block.h
//  OC_Basic
//
//  Created by YunTu on 15/8/29.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import <Foundation/Foundation.h>

//block定义
int (^getSum)(int, int) = ^(int a, int b) {
    return a+b;
};

//block定义和声明分开
typedef int(^Product)(int, int);

@interface Block : NSObject


@end
