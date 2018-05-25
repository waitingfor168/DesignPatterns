//
//  OtherDataLine.h
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OtherDataLine : NSObject

@property (nonatomic, copy) NSString *otherName;
@property (nonatomic, copy) NSString *otherImageUrl;

- (void)execute;

@end
