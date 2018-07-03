//
//  HJProtocalManager.m
//  MouldeTestDemo(Protocal)
//
//  Created by miaotong on 2018/7/2.
//  Copyright © 2018年 miaotong. All rights reserved.
//

#import "HJProtocalManager.h"

@interface HJProtocalManager ()
@property (nonatomic, strong)NSMutableDictionary *searviceProvideSource;
@end

@implementation HJProtocalManager

+ (HJProtocalManager *)shareInstance {
    static HJProtocalManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _searviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol {
    if (provide == nil || protocol == nil) {
        return;
    }
    
    [[self shareInstance].searviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}


+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    return [[self shareInstance].searviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
