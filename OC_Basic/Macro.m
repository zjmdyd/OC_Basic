//
//  Macro.m
//  OC_Basic
//
//  Created by YunTu on 15/9/15.
//  Copyright (c) 2015年 YunTu. All rights reserved.
//

#import "Macro.h"

#define __NSX_PASTE__(A,B) A##B

#if !defined(MIN)
#define __NSMIN_IMPL__(A,B,L) ({ __typeof__(A) __NSX_PASTE__(__a,L) = (A); __typeof__(B) __NSX_PASTE__(__b,L) = (B); (__NSX_PASTE__(__a,L) < __NSX_PASTE__(__b,L)) ? __NSX_PASTE__(__a,L) : __NSX_PASTE__(__b,L); })

#define MIN(A,B) __NSMIN_IMPL__(A,B,__COUNTER__)
#endif


/*
 __COUNTER__是一个预定义的宏，这个值在编译过程中将从0开始计数，每次被调用时加1。因为唯一性，所以很多时候被用来构造独立的变量名称
 
 #define Conn(x,y) x##y
 x##y表示什么？表示x连接y，举例说：
 int n = Conn(123,456); 结果就是n=123456;
 */

@implementation Macro

+ (void)test {
    printf("min = %d\n", MIN(10, 12));
    /*
     MIN(10, 12) = __NSMIN_IMPL__(10, 12, __COUNTER__)
     = ({                                         \
        __typeof__(A) __NSX_PASTE__(__a,L) = (A); \
        __typeof__(B) __NSX_PASTE__(__b,L) = (B); \
        (__NSX_PASTE__(__a,L) < __NSX_PASTE__(__b,L)) ? __NSX_PASTE__(__a,L) : __NSX_PASTE__(__b,L); \
     })
     */
    
    __unused int i = 0;     //不出现未使用warning
}

@end
