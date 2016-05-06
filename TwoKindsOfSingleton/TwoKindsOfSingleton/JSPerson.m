//
//  JSPerson.m
//  TwoKindsOfSingleton
//
//  Created by  江苏 on 16/5/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSPerson.h"

@implementation JSPerson

static id _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone{
   
    @synchronized (self) {
        if (_instance==nil) {
            _instance=[super allocWithZone:zone];
        }
    }
    
    return _instance;
}

+(instancetype)sharedInstance{
    
    @synchronized (self) {
        if (_instance==nil) {
            _instance=[[self alloc]init];
        }
    }
    
    return _instance;
}

-(id)copyWithZone:(NSZone *)zone{
    return _instance;
}
@end
