//
//  iPhoneDataLineObjectAdapter.h
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TargetProtocol.h"

@interface iPhoneDataLineObjectAdapter : NSObject <TargetProtocol>

- (instancetype)initWithData:(id)adaptee;

@end
