//
//  IMPObject.m
//  OC_Basic
//
//  Created by ZJ on 8/18/16.
//  Copyright © 2016 YunTu. All rights reserved.
//

#import "IMPObject.h"
#import <objc/runtime.h>

#ifdef haha

if !OBJC_OLD_DISPATCH_PROTOTYPES
typedef void (*IMP)(void /* id, SEL, ... */ );
else
typedef id (*IMP)(id, SEL, ...);
endif

#endif

typedef id (*_IMP)(id, SEL, ...);
typedef void (*_VIMP)(id, SEL, ...);

@implementation IMPObject

+ (void)test {
    // 获取原始方法
    Method say = class_getClassMethod(self, @selector(say));
    // 获取方法实现
    _VIMP say_IMP = (_VIMP)method_getImplementation(say);
    // 重置方法实现
    method_setImplementation(say, imp_implementationWithBlock(^(id target, SEL action) {
        // 调用原有方法实现
        say_IMP(target, @selector(say));
        // 新增代码
        NSLog(@"哈哈");
    }));
}

- (void)say {
    NSLog(@"%s", __func__);
}

/**
 * 
 BasicDataType *b1 = [BasicDataType new];
 String *s1 = [String new];
 
 //根据方法名say找到该方法的id,将sel与其绑定；
 SEL sel = @selector(say);  //也可以这样写：SEL sel=NSSelectorFromString(@"say");
 IMP imp1 = [b1 methodForSelector:sel];
 IMP imp2 = [s1 methodForSelector:sel];
 
 imp1(b1, sel);  // 注意调用的方法需要返回值
 imp2(s1, sel);
 //因为每个方法都有自己的地址，这种方式直接找到地址区分相同ID的方法，效率最高，但灵活性不如SEL方式。
 */
@end
