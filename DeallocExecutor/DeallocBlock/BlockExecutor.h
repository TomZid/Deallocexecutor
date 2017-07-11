//
//  BlockExecutor.h
//  Zhuge_play
//
//  Created by tom.zhu on 11/07/2017.
//  Copyright © 2017 tom.zhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeallocDefine.h"

@interface BlockExecutor : NSObject <NSCopying>
- (instancetype)initWithBlock:(Block)block;
@end
