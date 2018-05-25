//
//  TargetProtocol.h
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TargetProtocol <NSObject>

@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, copy) NSString *displayImageUrl;

- (void)startExecute;

@end
