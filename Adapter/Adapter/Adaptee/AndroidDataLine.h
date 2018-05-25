//
//  AndroidDataLine.h
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AndroidDataLine : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageUrl;

- (void)execute;

@end
