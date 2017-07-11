//
//  NSObject+DeallocBlock.m
//  Zhuge_play
//
//  Created by tom.zhu on 11/07/2017.
//  Copyright © 2017 tom.zhu. All rights reserved.
//

#import "NSObject+DeallocBlock.h"
#import "BlockExecutor.h"
#import <objc/runtime.h>

@implementation NSObject (DeallocBlock)
- (void)deallocBlock:(Block)block {
    if (block) {
        BlockExecutor *exe = [[BlockExecutor alloc] initWithBlock:block];
        /*
        //奇怪的事情，用了OBJC_ASSOCIATION_COPY以后发现copy了新的对象，老对象就是放掉了
        objc_setAssociatedObject(self, DeallocBlockChar, exe, OBJC_ASSOCIATION_COPY);
        */
        objc_setAssociatedObject(self, DeallocBlockChar, exe, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

@end
