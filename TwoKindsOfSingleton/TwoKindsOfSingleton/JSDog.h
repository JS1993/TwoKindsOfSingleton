//
//  JSDog.h
//  TwoKindsOfSingleton
//
//  Created by  江苏 on 16/5/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSDog : NSObject<NSCopying>

+(instancetype)sharedInstance;

@end
