//
//  ViewController.m
//  TwoKindsOfSingleton
//
//  Created by  江苏 on 16/5/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSPerson.h"
#import "JSDog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"JSPerson:%@---%@",[JSPerson sharedInstance],[[JSPerson alloc]init]);
    
    NSLog(@"JSDog:%@---%@",[JSDog sharedInstance],[[JSDog alloc]init]);
}

@end
