//
//  HJProtocalManager.h
//  MouldeTestDemo(Protocal)
//
//  Created by miaotong on 2018/7/2.
//  Copyright © 2018年 miaotong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJProtocalManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
