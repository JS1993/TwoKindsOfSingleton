//
//  JSDog.m
//  TwoKindsOfSingleton
//
//  Created by  江苏 on 16/5/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSDog.h"

@implementation JSDog

static id _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    
   
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance=[super allocWithZone:zone];
    });
    
    return _instance;
}

+(instancetype)sharedInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance=[[self alloc]init];
    });
    
    return _instance;
}

-(id)copyWithZone:(NSZone *)zone{
    return _instance;
}

@end
