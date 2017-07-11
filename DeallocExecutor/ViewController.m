//
//  ViewController.m
//  DeallocExecutor
//
//  Created by tom.zhu on 11/07/2017.
//  Copyright © 2017 tom.zhu. All rights reserved.
//

#import "ViewController.h"
#import "DeallocBlockUmbrellar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deallocBlock:^{
        NSLog(@"I dead");
    }];
}

- (void)dealloc {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
