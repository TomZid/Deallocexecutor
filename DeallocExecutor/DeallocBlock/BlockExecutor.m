//
//  BlockExecutor.m
//  Zhuge_play
//
//  Created by tom.zhu on 11/07/2017.
//  Copyright © 2017 tom.zhu. All rights reserved.
//

#import "BlockExecutor.h"

@interface BlockExecutor ()
@property (nonatomic, copy) Block block;
@end

@implementation BlockExecutor
- (instancetype)initWithBlock:(Block)block {
    if (self = [super init]) {
        self.block = block;
    }
    return self;
}

- (void)dealloc {
    self.block ? self.block() : nil;
}

- (id)copyWithZone:(NSZone *)zone {
    BlockExecutor *be = [[BlockExecutor class] allocWithZone:zone];
    return be;
}

@end
